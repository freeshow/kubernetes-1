# 版本信息
K8S_VERSION=v1.11.2
ETCD_VERSION=3.2.18
PAUSE_VERSION=3.1
COREDNS_VERSION=1.1.3


# 拉取镜像
docker pull anjia0532/google-containers.kube-apiserver-amd64:${K8S_VERSION}
docker pull anjia0532/google-containers.kube-controller-manager-amd64:${K8S_VERSION}
docker pull anjia0532/google-containers.kube-scheduler-amd64:${K8S_VERSION}
docker pull anjia0532/google-containers.kube-proxy-amd64:${K8S_VERSION}
docker pull anjia0532/google-containers.pause:${PAUSE_VERSION}
docker pull anjia0532/google-containers.etcd-amd64:${ETCD_VERSION}
docker pull anjia0532/google-containers.coredns:${COREDNS_VERSION}


## 修改tag
docker tag anjia0532/google-containers.kube-apiserver-amd64:${K8S_VERSION}  k8s.gcr.io/kube-apiserver-amd64:${K8S_VERSION}
docker tag anjia0532/google-containers.kube-controller-manager-amd64:${K8S_VERSION}  k8s.gcr.io/kube-controller-manager-amd64:${K8S_VERSION}
docker tag anjia0532/google-containers.kube-scheduler-amd64:${K8S_VERSION}  k8s.gcr.io/kube-scheduler-amd64:${K8S_VERSION}
docker tag anjia0532/google-containers.kube-proxy-amd64:${K8S_VERSION}   k8s.gcr.io/kube-proxy-amd64:${K8S_VERSION}
docker tag anjia0532/google-containers.pause:${PAUSE_VERSION}   k8s.gcr.io/pause:${PAUSE_VERSION}
docker tag anjia0532/google-containers.etcd-amd64:${ETCD_VERSION}   k8s.gcr.io/etcd-amd64:${ETCD_VERSION}
docker tag anjia0532/google-containers.coredns:${COREDNS_VERSION}   k8s.gcr.io/coredns:${COREDNS_VERSION}


## 删除镜像
docker rmi anjia0532/google-containers.kube-apiserver-amd64:${K8S_VERSION}
docker rmi anjia0532/google-containers.kube-controller-manager-amd64:${K8S_VERSION}
docker rmi anjia0532/google-containers.kube-scheduler-amd64:${K8S_VERSION}
docker rmi anjia0532/google-containers.kube-proxy-amd64:${K8S_VERSION}
docker rmi anjia0532/google-containers.pause:${PAUSE_VERSION}
docker rmi anjia0532/google-containers.etcd-amd64:${ETCD_VERSION}
docker rmi anjia0532/google-containers.coredns:${COREDNS_VERSION}