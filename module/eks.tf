resource "aws_eks_cluster" "eks" {
  
  count = var.is-eks-cluster-enabled == true ? : 0
  name = var.cluster-name
  role_arn = aws_iam_role.eks-cluster-role[count.index].role_arn
  version = var.cluster-version


  vpc_config {
    
  }
}