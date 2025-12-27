#!/bin/bash

# Launch OCI compute instances with specified configurations
# Replace placeholder values (like OCIDs and SSH keys) with actual values before running

# Launching Jenkins instance
oci compute instance launch \
    --compartment-id "ocid1.tenancy.oc1..aa" \
    --availability-domain ":AP-MUMBAI-1-AD-1" \
    --shape "VM.Standard.A1.Flex" \
    --shape-config '{"ocpus": 2, "memoryInGBs": 12}' \
    --image-id "ocid1.image.oc1.ap-mumbai-1.aaa" \
    --subnet-id "ocid1.subnet.oc1.ap-mumbai-1.a" \
    --display-name "jenkins" \
    --assign-public-ip true \
    --metadata '{"ssh_authorized_keys": "ssh-ed25519 A"}'

# Launching Monitoring instance
oci compute instance launch \
    --compartment-id "ocid1.tenancy.oc1..aa" \
    --availability-domain ":AP-MUMBAI-1-AD-1" \
    --shape "VM.Standard.A1.Flex" \
    --shape-config '{"ocpus": 2, "memoryInGBs": 12}' \
    --image-id "ocid1.image.oc1.ap-mumbai-1.aaa" \
    --subnet-id "ocid1.subnet.oc1.ap-mumbai-1.a" \
    --display-name "monitoring" \
    --assign-public-ip true \
    --metadata '{"ssh_authorized_keys": "ssh-ed25519 A"}'