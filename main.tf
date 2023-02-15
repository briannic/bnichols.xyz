provider "google" {
    project = "sigma-firmament-375715"
    region = "us-central1"
}

resource "google_storage_bucket" "static-site" {
	name	= "bnichols.xyz"
	location = "us-central1"
	force_destroy = true

	uniform_bucket_level_access = true

	website {
		main_page_suffix = "index.html"
		not_found_page = "404.html"
	}
}
