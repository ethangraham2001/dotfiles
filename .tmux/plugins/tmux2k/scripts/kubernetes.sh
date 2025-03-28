#!/bin/bash

current_context=$(kubectl config current-context 2>/dev/null)

if [ $? -eq 0 ]; then
    case "$current_context" in
        dev-*)
            echo "⎈ dev"
            ;;
        test-*)
            echo "⎈ test"
            ;;
        ops-*)
            echo "⎈ ops"
            ;;
        *)
            echo "⎈ $current_context"
            ;;
    esac
else
    echo "Not connected to a Kubernetes cluster"
fi
