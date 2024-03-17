from fastapi import FastAPI
from uvicorn import run
from fastapi.add_middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
)


@app.get("/")
def get_root():
    return {"message" : "voce chamou a API pelo metodo GET"}


@app.post("/")
def post_root():
    return {"message" : "voce chamou a API pelo metodo POST"}

    if _name_== "_main_":
        run(app,host ="0,0,0,0", port=8001)