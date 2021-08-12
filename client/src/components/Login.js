import React from "react"
import { useHistory } from "react-router-dom"
import {Button, Container} from "reactstrap"

export const Login = () => {
    
    const history = useHistory()

    const handleLogin = (e) => {
        e.preventDefault()

        localStorage.setItem("user_id", e.target.value);
        history.push("/")
    }

    return (
        <Container>
            <Button onClick={handleLogin} value={1}>Login as User</Button>
            <Button onClick={handleLogin} value={3}>Login as Admin</Button>
        </Container>
    )
}