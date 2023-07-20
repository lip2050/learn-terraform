variable "sample" {
  default = 100
}

variable "sample1" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "sample-ext" {
  value = "vale of Sample - ${var.sample}"
}


## Plain
variable "course" {
  default = "DevOps Training"
}

# List
variable "courses" {
  default = [
    "DevOps",
    "AWS",
    "Python"
  ]
}

# Map
variable "course_details" {
  default = {
    DevOps = {
      name = "DevOps"
      timing = "10am"
      duration = 90
    }
    AWS = {
      name = "AWS"
      timing = "11am"
      duration = 30
    }
  }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses[2]
}

output "course_details" {
  value = var.course_details["DevOps"]
}

variable "env" {}

output "env" {
  value = var.env
}