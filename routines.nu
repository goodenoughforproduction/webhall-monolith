def "main spinup" [] {
    docker compose up -d --build --force-recreate
}

def "main container_app_shell" [] {
    docker compose exec -ti app nu
}

def "main container_app_logs" [] {
    docker compose logs app -f
}

def main [] {}