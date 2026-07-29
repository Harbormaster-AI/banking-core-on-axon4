provider "aws" {

  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  default_tags {

    tags = {

      CreatedBy = "Harbormaster"

      GeneratorVersion = "2.2"

      Blueprint = "Axon4-Framework-Server"

      BlueprintVersion = "1.2"

      DomainModel = "${model.getModelMetadata.getName()}"

      DomainModelVersion = "${model.getModelMetadata.getVersion()}"

      GenerationId = "${systemIdentifier}"

      Verification = "${certificationLeve}"

    }

  }

}