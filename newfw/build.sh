#!/bin/bash
set -e

SERVICE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILD_DIR=$SERVICE_DIR/build/distributions

SERVICE_NAME=newfw

BOOTSTRAP_DIR=disable \
EXECUTOR_DIR=disable \
NEWFW_DOCUMENTATION_PATH="http://YOURNAMEHERE.COM/DOCS" \
NEWFW_ISSUES_PATH="http://YOURNAMEHERE.COM/SUPPORT" \
    $SERVICE_DIR/tools/build_framework.sh \
        $SERVICE_NAME \
        $SERVICE_DIR \
        --artifact "$BUILD_DIR/${SERVICE_NAME}-scheduler.zip" \
        $@
