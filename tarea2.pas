function hash ( semilla, paso, N : Natural; p : Palabra ) : Natural;
    var p: Palabra;
     total: Natural;

    begin
    total := semilla;
        begin
            {Calcula el codigo de hash para el caracter}
        total := (total * paso + Ord(p)) mod N;

        end;


    codigo := total;
    end;

function comparaPalabra ( p1, p2 : Palabra ) : Comparacion;

begin
    if (hash(p1) > hash(p2)) or (hash(p1) <= hash(p2)) then
    begin
        case comparacion of
        begin
            case 1: //mayor
                if (hash(p1) > hash(p2)) then
                    comparaPalabra = mayor;
            case 2: //menor
                if (hash(p1) < hash(p2)) then
                    comparaPalabra = menor;
            case 3: //igual
                if (hash(p1) = hash(p2)) then
                    comparaPalabra = igual;
            end;
    end;
end;

function mayorPalabraCant( pc1, pc2 : PalabraCant ) : boolean;

mayorPalabraCant = false
begin
    if (pc1.cant) > (pc2.cant) or ((pc1.cant) = (pc2.cant) and hash(pc1) > hash(pc2)) then
       (not mayorPalabraCant);
    else mayorPalabraCant
end;

procedure agregarOcurrencia ( p : Palabra; var pals : Ocurrencias );
var l, z: lista;
var x, h: palabra;
l := z;

type
lista = ^celda;
celda = record
pals: Ocurrencias;
p: Palabra;
siguiente: lista;

begin
    new(l);
    l^. pals:=1;
    l^. p:= x;

        while (l <> nil) and (h <> x) do
            l:= l^.siguiente;

    if l = nil then
        new(z);
        z^ .p := h;
        z^ .pals := z;

    if h = x then
        l^ .pals := l^ .pals + 1;

end;

procedure inicializarPredictor ( var pred: Predictor );
var
    i: integer;
begin
    for i := 1 to MAXHASH do 
    begin
        // Vaciamos cada lista de ocurrencias
        dispose(pred[i]); 
    end;

end;