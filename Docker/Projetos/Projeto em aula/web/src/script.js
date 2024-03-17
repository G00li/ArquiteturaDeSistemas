const requestButton = document.getElementById('request-button')
const apiUrl = "http://localhost:8001/api"


requestButton.addEventListener("click", () => {

    const methodValue = document.getElementById('methods').value

    const call = async (method, endpoint) => {
        fetch(
            endpoint,
            {
                method: method,
                headers: {
                    'Content-Type': 'application-json'
                }
            }
        ).then( response => {
            if (response.ok) {
                const response = document.getElementById('responses');
                const div = document.createElement('div');
                
                div.innerHTML = response.text();
                response.appendChild(div);
            }
        });
    };

    call(methodValue, apiUrl);
});