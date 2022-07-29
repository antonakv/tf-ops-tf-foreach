resource "null_resource" "foreach" {
  for_each = toset(["one", "two", "three", "four"])
}

