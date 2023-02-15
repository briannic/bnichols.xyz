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

resource "google_storage_bucket_object" "indexpage" {
    name            = "index.html"
    bucket          = google_storage_bucket.static-site.id
    source          = "index.html"
    content_type    = "text/html"
}

resource "google_storage_bucket_object" "errorpage" {
    name            = "404.html"
    bucket          = google_storage_bucket.static-site.id
    source          = "404.html"
    content_type    = "text/html"
}
