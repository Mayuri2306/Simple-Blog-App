output "cloudfront_url" {
  value = aws_cloudfront_distribution.cdn_distribution.domain_name
}