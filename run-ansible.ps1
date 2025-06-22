# 建立 Docker image
docker build -t ansible-runner .

# 執行 Docker container，並掛載專案資料夾與 Docker socket
docker run --rm -it `
  -v "${PWD}:/workspace" `
  -v "/var/run/docker.sock:/var/run/docker.sock" `
  --name ansible-playbook-runner `
  ansible-runner
