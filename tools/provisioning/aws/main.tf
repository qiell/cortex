It seems there was a mix-up in your request. The vulnerability you mentioned in the description (Ensure SSH (TCP,22) is not accessible by a public CIDR block range) does not match the Rule ID (AC_AWS_0319) you provided. However, based on the description, the issue is with the security group rules allowing SSH access from any IP address. Here's how you can fix it:

```hcl
resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
```

In this example, the `cidr_blocks` argument is set to a private IP address range (`10.0.0.0/16`), which restricts SSH access to only IP addresses within this range. Please replace `10.0.0.0/16` with the appropriate private IP address range for your network.