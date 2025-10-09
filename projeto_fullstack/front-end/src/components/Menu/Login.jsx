import style from './login.module.css'

const Login = () => {
    document.getElementById('frmlogin').addEventListener('submit', function() {
        
        const email = document.getElementById('email').value
        const senha = document.getElementById('senha').value

        const url = 'localhost:3000/login'

        fetch(url, {
            method: 'POST',
            headers: {
                "Content-Type":"application/json",
                "Accept":"application/json"
            },
            body: JSON.stringify({email, senha})
        })

        .then(()=>{
            if(!resizeBy.ok) 
                console.log("erro ao fazer login");
            return res.json()
        })
        .then((data)=>{
            if(data)
                alert("login bem sucedido")
        })
        .catch((error) => console.log(error)
        )
    })
  
    return (
        <>
            <form id='frmlogin'>
                <div className="container">
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input  type="email" class="form-control" id="email" aria-describedby="emailHelp" />
                </div>
                <div class="mb-3">
                    <label for="senha" class="form-label">Senha</label>
                    <input type="password" class="form-control" id="senha" />
                </div>
                {/* <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Confirme sua senha</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" />
                </div> */}
                <button type="submit"  class="btn mb-5 btn-primary">Confirmar</button>
                </div>
            </form>

        
        </>
    )
}

export default Login