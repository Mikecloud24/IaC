terraform {
	backend "s3" {
		bucket            = "mikecloud24demobucket"
		key               = "state/terraform.tfstate"
		region            = "us-east-1"
		dynamodb_table    = "mikecloud24-infra-lock"
		encrypt           = true

	}
}