import torch
import torch.nn as nn
import torch.optim as optim
from torchvision import datasets, transforms
import numpy as np

# Lightweight Architecture
class HackathonCNN(nn.Module):
    def _init_(self):
        super(HackathonCNN, self)._init_()
        self.conv1 = nn.Conv2d(1, 8, kernel_size=3, bias=False)
        self.relu = nn.ReLU()
        self.pool = nn.MaxPool2d(kernel_size=2, stride=2)
        self.fc = nn.Linear(8 * 13 * 13, 10, bias=False)

    def forward(self, x):
        x = self.pool(self.relu(self.conv1(x)))
        x = torch.flatten(x, 1)
        x = self.fc(x)
        return x

# 2. Load Data and Train
print("Downloading MNIST and training...")
transform = transforms.Compose([transforms.ToTensor()])
train_dataset = datasets.MNIST(root='./data', train=True, download=True, transform=transform)
train_loader = torch.utils.data.DataLoader(train_dataset, batch_size=64, shuffle=True)

model = HackathonCNN()
optimizer = optim.Adam(model.parameters(), lr=0.01)
criterion = nn.CrossEntropyLoss()

model.train()
for batch_idx, (data, target) in enumerate(train_loader):
    optimizer.zero_grad()
    output = model(data)
    loss = criterion(output, target)
    loss.backward()
    optimizer.step()
    if batch_idx % 100 == 0:
        print(f"Batch {batch_idx}/len(train_loader) - Loss: {loss.item():.4f}")

# Export Weights to C++ 
print("Exporting weights to weights.h...")
conv_weights = model.conv1.weight.data.numpy()
fc_weights = model.fc.weight.data.numpy()

with open("weights.h", "w") as f:
    f.write("#pragma once\n\n")
    f.write(f"// Auto-generated weights for Phase 1 & Phase 2\n")
    f.write("const float conv_weights[8][3][3] = {\n")
    for flt in range(8):
        f.write("  {\n")
        for i in range(3):
            f.write("    {")
            f.write(", ".join(f"{val:.6f}" for val in conv_weights[flt, 0, i, :]))
            f.write("},\n")
        f.write("  },\n")
    f.write("};\n\n")

    f.write("const float fc_weights[10][1352] = {\n")
    for cls in range(10):
        f.write("  {")
        f.write(", ".join(f"{val:.6f}" for val in fc_weights[cls, :]))
        f.write("},\n")
    f.write("};\n")

print("Success! Data Prep complete. 'weights.h' generated.")