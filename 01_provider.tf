provider "google" {
	credentials = "${file("~/.gcp/terraform_key.json")}"
	project = "vibrant-climber-188516"
	region = "us-east1-b"
}

