import socket
import dns.resolver


domain = "proxy.cloud.amisco.eu"

def get_service(domain):
    def get_cname_record(domain):
        try:
            answers = dns.resolver.resolve(domain, 'CNAME')
            return str(answers[0].target)
        except dns.resolver.NoAnswer:
            return None
        except Exception as e:
            print(f"Error retrieving CNAME record: {e}")
            return None

    def get_ip_record(domain):
        try:
            result = socket.gethostbyname(domain)
            return result
        except Exception as e:
            print(f"Error retrieving IP address: {e}")
            return None

    def check_for_aws_services(cname):
        if cname:
            if 'elb.amazonaws.com' in cname:
                return "Application Load Balancer (ALB) or Network Load Balancer (NLB)"
            elif 's3-website' in cname:
                return "Amazon S3 Static Website"
            elif 'cloudfront.net' in cname:
                return "Amazon CloudFront"
            elif 'api-gateway' in cname:
                return "Amazon API Gateway"
            else:
                return "AWS Service, possibly unknown type"
        return "Non-AWS Service"

    # Try to get CNAME record
    cname_record = get_cname_record(domain)
    if cname_record:
        return check_for_aws_services(cname_record)

    # If no CNAME record, try to get IP record
    ip_record = get_ip_record(domain)
    if ip_record:
        return "JJJJJ"

    return "No valid DNS records found"



service_type = get_service(domain)
print(service_type)
print(f"Service type for {domain}: {service_type}")

