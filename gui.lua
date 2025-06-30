
--[[
    SimpleSpy v2.2 FONTE

    Créditos:
        exx - basicamente tudo
        Frosty - GUI para Lua
]]

-- desliga a instância anterior do SimpleSpy
se _G.SimpleSpyExecuted e type(_G.SimpleSpyShutdown) == "função" então
    _G.SimpleSpyShutdown()
fim

Jogadores locais = jogo:GetService("Jogadores")
CoreGui local = jogo:GetService("CoreGui")
Destaque local = loadstring(jogo:HttpGet(" https://github.com/exxtremestuffs/SimpleSpySource/raw/master/highlight.lua "))()

---- GERADO (mais ou menos) POR GUI para LUA ----

-- Instâncias:

local SimpleSpy2 = Instance.new("ScreenGui")
Fundo local = Instância.new("Quadro")
PainelEsquerdo local = Instance.new("Quadro")
LogList local = Instance.new("ScrollingFrame")
UIListLayout local = Instância.new("UIListLayout")
local RemoteTemplate = Instance.new("Quadro")
ColorBar local = Instance.new("Quadro")
Texto local = Instância.new("TextLabel")
Botão local = Instance.new("TextButton")
PainelDireito local = Instance.new("Quadro")
CodeBox local = Instance.new("Quadro")
Quadro de Rolagem local = Instância.new("Quadro de Rolagem")
UIGridLayout local = Instância.new("UIGridLayout")
FunctionTemplate local = Instance.new("Quadro")
local ColorBar_2 = Instance.new("Quadro")
Texto local_2 = Instância.new("TextLabel")
Botão local_2 = Instância.new("TextButton")
TopBar local = Instance.new("Quadro")
local Simples = Instância.new("TextButton")
BotãoFechar local = Instância.new("BotãoTexto")
ImageLabel local = Instância.new("ImageLabel")
MaximizeButton local = Instance.new("TextButton")
local ImageLabel_2 = Instância.new("ImageLabel")
MinimizeButton local = Instance.new("TextButton")
local ImageLabel_3 = Instância.new("ImageLabel")
Dica de ferramenta local = Instance.new("Quadro")
TextLabel local = Instância.new("TextLabel")

--Propriedades:

SimpleSpy2.Nome = "SimpleSpy2"
SimpleSpy2.ResetOnSpawn = falso

Background.Name = "Fundo"
Background.Parent = SimpleSpy2
Plano de fundo.CorDeFundo3 = Cor3.novo(1, 1, 1)
Contexto.TransparênciaDeFundo = 1
Background.Posição = UDim2.new(0, 500, 0, 200)
Plano de fundo.Tamanho = UDim2.novo(0, 450, 0, 268)

LeftPanel.Name = "PainelEsquerdo"
LeftPanel.Parent = Plano de fundo
LeftPanel.BackgroundColor3 = Cor3.novo(0,207843, 0,203922, 0,215686)
LeftPanel.BorderSizePixel = 0
LeftPanel.Position = UDim2.new(0, 0, 0, 19)
LeftPanel.Size = UDim2.new(0, 131, 0, 249)

LogList.Name = "Lista de Logs"
LogList.Parent = PainelEsquerdo
LogList.Active = verdadeiro
LogList.BackgroundColor3 = Cor3.novo(1, 1, 1)
LogList.BackgroundTransparency = 1
LogList.BorderSizePixel = 0
LogList.Posição = UDim2.novo(0, 0, 0, 9)
LogList.Size = UDim2.new(0, 131, 0, 232)
LogList.CanvasSize = UDim2.new(0, 0, 0, 0)
LogList.Espessura da Barra de Rolagem = 4

UIListLayout.Parent = Lista de Logs
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

RemoteTemplate.Name = "TemplateRemoto"
RemoteTemplate.Parent = Lista de Logs
RemoteTemplate.BackgroundColor3 = Cor3.novo(1, 1, 1)
RemoteTemplate.BackgroundTransparency = 1
RemoteTemplate.Size = UDim2.new(0, 117, 0, 27)

ColorBar.Name = "ColorBar"
ColorBar.Parent = ModeloRemoto
ColorBar.BackgroundColor3 = Color3.new(1, 0,94902, 0)
ColorBar.BorderSizePixel = 0
ColorBar.Position = UDim2.new(0, 0, 0, 1)
ColorBar.Size = UDim2.new(0, 7, 0, 18)
ColorBar.ZIndex = 2

Texto.Nome = "Texto"
Texto.Parent = RemoteTemplate
Texto.BackgroundColor3 = Cor3.novo(1, 1, 1)
Texto.TransparênciaDeFundo = 1
Texto.Posição = UDim2.new(0, 12, 0, 1)
Texto.Tamanho = UDim2.novo(0, 105, 0, 18)
Texto.ZIndex = 2
Texto.Fonte = Enum.Fonte.SourceSans
Texto.Texto = "TEXTO"
Texto.TextColor3 = Cor3.novo(1, 1, 1)
Texto.TamanhoDoTexto = 14
Texto.TextXAlinhamento = Enum.TextXAlinhamento.Esquerda

Button.Name = "Botão"
Botão.Parent = RemoteTemplate
Botão.BackgroundColor3 = Cor3.novo(0, 0, 0)
Botão.TransparênciaDeFundo = 0,75
Botão.BorderColor3 = Cor3.novo(1, 1, 1)
Botão.Posição = UDim2.new(0, 0, 0, 1)
Botão.Tamanho = UDim2.novo(0, 117, 0, 18)
Botão.AutoButtonColor = falso
Botão.Fonte = Enum.Fonte.SourceSans
Botão.Texto = ""
Botão.TextColor3 = Cor3.novo(0, 0, 0)
Botão.TamanhoDoTexto = 14

RightPanel.Name = "PainelDireito"
RightPanel.Parent = Plano de fundo
RightPanel.BackgroundColor3 = Cor3.novo(0,145098, 0,141176, 0,14902)
RightPanel.BorderSizePixel = 0
RightPanel.Position = UDim2.new(0, 131, 0, 19)
RightPanel.Size = UDim2.new(0, 319, 0, 249)

CodeBox.Name = "Caixa de Código"
CodeBox.Parent = PainelDireito
CodeBox.BackgroundColor3 = Cor3.novo(0,0823529, 0,0745098, 0,0784314)
CodeBox.BorderSizePixel = 0
CodeBox.Size = UDim2.new(0, 319, 0, 119)

ScrollingFrame.Parent = PainelDireito
ScrollingFrame.Active = verdadeiro
ScrollingFrame.BackgroundColor3 = Cor3.novo(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0, 0, 0,5, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 0,5, -9)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 4

UIGridLayout.Parent = Quadro de Rolagem
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(0, 94, 0, 27)

FunctionTemplate.Name = "FunçãoTemplate"
FunctionTemplate.Parent = Quadro de Rolagem
FunctionTemplate.BackgroundColor3 = Cor3.novo(1, 1, 1)
FunctionTemplate.BackgroundTransparency = 1
FunctionTemplate.Size = UDim2.new(0, 117, 0, 23)

ColorBar_2.Name = "Barra de Cores"
ColorBar_2.Parent = Modelo de Função
ColorBar_2.BackgroundColor3 = Cor3.novo(1, 1, 1)
ColorBar_2.BorderSizePixel = 0
ColorBar_2.Posição = UDim2.new(0, 7, 0, 10)
ColorBar_2.Size = UDim2.new(0, 7, 0, 18)
ColorBar_2.ZIndex = 3

Text_2.Nome = "Texto"
Texto_2.Parent = ModeloDeFunção
Texto_2.CorDeFundo3 = Cor3.novo(1, 1, 1)
Texto_2.TransparênciaDeFundo = 1
Texto_2.Posição = UDim2.novo(0, 19, 0, 10)
Texto_2.Tamanho = UDim2.novo(0, 69, 0, 18)
Texto_2.ZIndex = 2
Texto_2.Fonte = Enum.Fonte.SourceSans
Texto_2.Texto = "TEXTO"
Texto_2.TextColor3 = Cor3.novo(1, 1, 1)
Texto_2.TamanhoDoTexto = 14
Text_2.TextStrokeColor3 = Color3.new(0,145098, 0,141176, 0,14902)
Texto_2.AlinhamentoTextoXA = Enum.AlinhamentoTextoXA.Esquerda

Button_2.Name = "Botão"
Botão_2.Parent = Modelo de Função
Botão_2.CorDeFundo3 = Cor3.novo(0, 0, 0)
Botão_2.TransparênciaDeFundo = 0,69999998807907
Botão_2.BorderColor3 = Cor3.novo(1, 1, 1)
Botão_2.Posição = UDim2.novo(0, 7, 0, 10)
Botão_2.Tamanho = UDim2.novo(0, 80, 0, 18)
Botão_2.AutoButtonColor = falso
Botão_2.Fonte = Enum.Fonte.SourceSans
Botão_2.Texto = ""
Botão_2.TextColor3 = Cor3.novo(0, 0, 0)
Botão_2.TamanhoDoTexto = 14

TopBar.Nome = "TopBar"
TopBar.Parent = Plano de fundo
TopBar.BackgroundColor3 = Cor3.novo(0,145098, 0,141176, 0,14902)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 450, 0, 19)

Simple.Name = "Simples"
Simple.Parent = Barra superior
Simples.BackgroundColor3 = Cor3.novo(1, 1, 1)
Simple.AutoButtonColor = falso
Simple.BackgroundTransparency = 1
Simple.Posição = UDim2.new(0, 5, 0, 0)
Simple.Size = UDim2.new(0, 57, 0, 18)
Simple.Font = Enum.Font.SourceSansBold
Simple.Text = "SimpleSpy"
Simple.TextColor3 = Cor3.novo(1, 1, 1)
Simple.TextSize = 14
Simple.TextXAlinhamento = Enum.TextXAlinhamento.Esquerda

CloseButton.Name = "FecharBotão"
BotãoFechar.Parente = BarraSuperior
CloseButton.BackgroundColor3 = Cor3.novo(0,145098, 0,141176, 0,14902)
BotãoFechar.TamanhoDaBordaPixel = 0
CloseButton.Position = UDim2.new(1, -19, 0, 0)
BotãoFechar.Tamanho = UDim2.novo(0, 19, 0, 19)
BotãoFechar.Fonte = Enum.Fonte.SourceSans
BotãoFechar.Texto = ""
CloseButton.TextColor3 = Color3.new(0, 0, 0)
CloseButton.TextSize = 14

ImageLabel.Parent = BotãoFechar
ImageLabel.BackgroundColor3 = Cor3.novo(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, 5, 0, 5)
ImageLabel.Size = UDim2.new(0, 9, 0, 9)
ImageLabel.Image = " http://www.roblox.com/asset/?id=5597086202 "

MaximizeButton.Name = "MaximizeButton"
MaximizeButton.Parent=TopBar
MaximizeButton.BackgroundColor3 = Cor3.novo(0,145098, 0,141176, 0,14902)
MaximizeButton.BorderSizePixel = 0
MaximizeButton.Position = UDim2.new(1, -38, 0, 0)
MaximizeButton.Size = UDim2.new(0, 19, 0, 19)
MaximizeButton.Font = Enum.Font.SourceSans
MaximizeButton.Text = ""
MaximizeButton.TextColor3 = Cor3.novo(0, 0, 0)
MaximizeButton.TextSize = 14

ImageLabel_2.Parent = BotãoMaximizar
ImageLabel_2.BackgroundColor3 = Cor3.novo(1, 1, 1)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.Posição = UDim2.new(0, 5, 0, 5)
ImageLabel_2.Size = UDim2.new(0, 9, 0, 9)
ImageLabel_2.Image = " http://www.roblox.com/asset/?id=5597108117 "

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TopBar
MinimizeButton.BackgroundColor3 = Color3.new(0,145098, 0,141176, 0,14902)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(1, -57, 0, 0)
MinimizeButton.Size = UDim2.new(0, 19, 0, 19)
MinimizeButton.Font = Enum.Font.SourceSans
MinimizeButton.Text = ""
MinimizeButton.TextColor3 = Color3.new(0, 0, 0)
MinimizeButton.TextSize = 14

ImageLabel_3.Parent = BotãoMinimizar
ImageLabel_3.BackgroundColor3 = Cor3.novo(1, 1, 1)
ImageLabel_3.BackgroundTransparency = 1
ImageLabel_3.Posição = UDim2.new(0, 5, 0, 5)
ImageLabel_3.Size = UDim2.new(0, 9, 0, 9)
ImageLabel_3.Image = " http://www.roblox.com/asset/?id=5597105827 "

ToolTip.Name = "Dica de ferramenta"
Dica de ferramenta.Parent = SimpleSpy2
Dica de ferramenta.CorDeFundo3 = Cor3.fromRGB(26, 26, 26)
Dica de ferramenta.Transparência de fundo = 0,1
Dica de ferramenta.BorderColor3 = Cor3.novo(1, 1, 1)
Dica de ferramenta.Tamanho = UDim2.novo(0, 200, 0, 50)
Dica de ferramenta.ZIndex = 3
ToolTip.Visible = falso

TextLabel.Parent = Dica de ferramenta
TextLabel.BackgroundColor3 = Cor3.novo(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 2, 0, 2)
TextLabel.Size = UDim2.new(0, 196, 0, 46)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Este é um texto um pouco mais longo."
TextLabel.TextColor3 = Cor3.novo(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextWrapped = verdadeiro
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

-------------------------------------------------------------------------------
-- inicialização
local RunService = jogo:GetService("RunService")
Serviço de Entrada de Usuário local = jogo:GetService("Serviço de Entrada de Usuário")
TweenService local = jogo:GetService("TweenService")
Provedor de conteúdo local = jogo:GetService("Provedor de conteúdo")
Serviço de Texto local = jogo:GetService("Serviço de Texto")
Mouse local = jogo:GetService("Jogadores").LocalPlayer:GetMouse()

cor selecionada local = Cor3.novo(0,321569, 0,333333, 1)
cor deselecionada local = Cor3.novo(0,8, 0,8, 0,8)
--- Então as coisas estão piorando
layout localOrderNum = 999999999
--- Se a GUI está fechando ou não
fechamento principal local = falso
--- Se a GUI está fechada ou não (o padrão é falso)
local fechado = falso
--- Se a barra lateral está fechando ou não
fechamento lateral local = falso
--- Se a barra lateral está fechada ou não (o padrão é verdadeiro, mas abre automaticamente na seleção remota)
lado localFechado = falso
--- Se a caixa de código está maximizada ou não (o padrão é falso)
local maximizado = falso
--- Os logs de eventos a serem lidos
registros locais = {}
--- O evento selecionado atualmente. Log (padrão nulo)
local selecionado = nulo
--- A lista negra (pode ser um nome de string ou a Instância Remota)
lista negra local = {}
--- A lista de blocos (pode ser um nome de string ou a Instância Remota)
lista de bloqueio local = {}
--- Se deve ou não adicionar a função getNil
local getNil = falso
--- Conjunto de controles remotos (e funções originais) conectados a
locais conectadosRemotos = {}
--- Verdadeiro = função de gancho, falso = chamada de nome
alternância local = falso
gm local = getrawmetatable(jogo)
local original = gm.__namecall
setreadonly(gm, falso)
--- usado para evitar recursivos
Tabelas anteriores locais = {}
--- mantém logs (para exclusão)
logs remotos locais = {}
--- usado para função de gancho
local remoteEvent = Instance.new("EventoRemoto")
--- usado para função de gancho
Função remota local = Instância.new("FunçãoRemota")
Evento original local = Evento remoto.FireServer
Função original local = FunçãoRemota.InvokeServer
--- a quantidade máxima de controles remotos permitidos em logs
_G.SIMPLESPYCONFIG_MaxRemotes = 500
--- quantos espaços recuar
recuo local = 4
--- usado para agendador de tarefas
agendamento local = {}
--- RBXScriptConnect do agendador de tarefas
agendador local connect
SimpleSpy local = {}
topstr local = ""
bottomstr local = ""
controles remotos locais FadeIn
FadeIn local à direita
caixa de código local
p local
local getnilrequired = falso

-- variáveis ​​de bloqueio automático
bloqueio automático local = falso
história local = {}
local excluindo = {}

-- variáveis ​​de informação de função
função localEnabled = verdadeiro

-- conexão/conexão remota de variáveis ​​de API
sinais remotos locais = {}
Ganchos remotos locais = {}

-- ícone original do mouse
oldIcon local = Mouse.Icon

-- se o mouse estiver dentro da interface gráfica
mouseInGui local = falso

-- conjunto prático de RBXScriptConnections para desconectar no desligamento
conexões locais = {}

-- se o SimpleSpy usa ou não 'getcallingscript()' para obter o script (o padrão é falso devido à detecção)
uso localGetCallingScript = falso

-- funções

--- Converte argumentos em uma string e gera código que chama o método especificado com eles, recomendado para ser usado em conjunto com ValueToString (o método deve ser uma string, por exemplo, `game:GetService("ReplicatedStorage").Remote:FireServer`)
--- @param método string
--- @param args qualquer[]
--- @retornar string
função SimpleSpy:ArgsToString(método, args)
    assert(typeof(método) == "string", "string esperada, obtida" .. typeof(método))
    assert(typeof(args) == "tabela", "tabela esperada, obtida" .. typeof(args))
    retornar v2v({args = args}) .. "\n\n" .. método .. "(descompactar(args))"
fim

--- Converte um valor em variáveis ​​com o índice especificado como nome da variável (se nulo/inválido, o nome será atribuído automaticamente)
--- @param t any[]
--- @retornar string
função SimpleSpy:TableToVars(t)
    assert(typeof(t) == "tabela", "tabela esperada, obtida " .. typeof(t))
    retornar v2v(t)
fim

--- Converte um valor em uma variável com o `variablename` especificado (se nulo/inválido, o nome será atribuído automaticamente)
--- @param valor qualquer
--- @retornar string
função SimpleSpy:ValueToVar(valor, nomedavariável)
    assert(nomedavariável == nulo ou typeof(nomedavariável) == "string", "string esperada, obtida" .. typeof(nomedavariável))
    se não for nomedavariável então
        nomedavariável = 1
    fim
    retornar v2v({[nomedavariável] = valor})
fim

--- Converte qualquer valor em uma string, não pode preservar o conteúdo da função
--- @param valor qualquer
--- @retornar string
função SimpleSpy:ValueToString(valor)
    retornar v2s(valor)
fim

--- Gera as informações da função simplespy
--- @param func função
--- @retornar string
função SimpleSpy:GetFunctionInfo(func)
    assert(typeof(func) == "function", "Instância esperada, obtida " .. typeof(func))
    retornar v2v{functionInfo = {
        informação = debug.getinfo(função),
        constantes = debug.getconstants(func)
    }}
fim

--- Obtém o ScriptSignal para um comando remoto especificado sendo disparado
--- @param Instância remota
função SimpleSpy:GetRemoteFiredSignal(remoto)
    assert(typeof(remote) == "Instância", "Instância esperada, obtida " .. typeof(remote))
    se não remoteSignals[remoto] então
        remoteSignals[remoto] = novoSinal()
    fim
    retornar remoteSignals[remoto]
fim

--- Permite a conexão direta de controles remotos **ISTO PODE SER MUITO PERIGOSO**
--- @param Instância remota
--- @param função f
função SimpleSpy:HookRemote(remoto, f)
    assert(typeof(remote) == "Instância", "Instância esperada, obtida " .. typeof(remote))
    assert(typeof(f) == "função", "função esperada, obtida " .. typeof(f))
    remoteHooks[remoto] = f
fim

--- Bloqueia a instância/string remota especificada
--- @param remoto qualquer
função SimpleSpy:BlockRemote(remoto)
    assert(typeof(remoto) == "Instância" ou typeof(remoto) == "string", "Instância | string esperada, obtida " .. typeof(remoto))
    blocklist[remoto] = verdadeiro
fim

--- Exclui o controle remoto especificado dos logs (instância/string)
--- @param remoto qualquer
função SimpleSpy:ExcludeRemote(remoto)
    assert(typeof(remoto) == "Instância" ou typeof(remoto) == "string", "Instância | string esperada, obtida " .. typeof(remoto))
    lista negra[remoto] = verdadeiro
fim

--- Cria um novo ScriptSignal que pode ser conectado e disparado
--- @return tabela
função newSignal()
    local conectado = {}
    retornar {
        Conectar = função(self, f)
            assert(conectado, "Sinal fechado")
            conectado[àstring(f)] = f
            retornar setmetatable({
                Conectado = verdadeiro,
                Desconectar = função(self)
                    se não estiver conectado então
                        warn("O sinal já está fechado")
                    fim
                    self.Connected = falso
                    conectado[àstring(f)] = nulo
                fim
            },
            {
                __index = função(self, i)
                    se i == "Conectado" então
                        retornar não conectado[tostring(f)]
                    fim
                fim
            })
        fim,
        Fogo = função(self, ...)
            para _, f em pares (conectados) faça
                coroutine.wrap(f)(...)
            fim
        fim
    }
fim

--- Evita que spam remoto cause atraso (limpa logs após `_G.SIMPLESPYCONFIG_MaxRemotes` ou 500 controles remotos)
função clean()
    máximo local = _G.SIMPLESPYCONFIG_MaxRemotes
    se não typeof(max) == "número" e math.floor(max) ~= max então
        máx = 500
    fim
    se #remoteLogs > max então
        para i = 100, #remoteLogs faz
            local v = remoteLogs[i]
            se typeof(v[1]) == "RBXScriptConnection" então
                v[1]:Desconectar()
            fim
            se typeof(v[2]) == "Instância" então
                v[2]:Destruir()
            fim
        fim
        novosLogs locais = {}
        para i = 1, 100 faça
            tabela.inserir(novosLogs, logsremotos[i])
        fim
        remoteLogs = novosLogs
    fim
fim

--- Dimensiona a dica de ferramenta para caber no texto que contém
função scaleToolTip()
    tamanho local = TextService:GetTextSize(TextLabel.Text, TextLabel.TextSize, TextLabel.Font, Vector2.new(196, math.huge))
    TextLabel.Size = UDim2.new(0, tamanho.X, 0, tamanho.Y)
    ToolTip.Size = UDim2.new(0, tamanho.X + 4, 0, tamanho.Y + 4)
fim

--- Executado quando o botão de alternância (o logotipo do SimpleSpy) é passado sobre
função onToggleButtonHover()
    se não alternar então
        TweenService:Criar(Simples, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(252, 51, 51)}):Reproduzir()
    outro
        TweenService:Criar(Simples, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(68, 206, 91)}):Reproduzir()
    fim
fim

--- Executado quando o botão de alternância não está sobre
função onToggleButtonUnhover()
    TweenService:Criar(Simples, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Reproduzir()
fim

--- Executado quando o botão X é passado sobre
função onXButtonHover()
    TweenService:Criar(FecharBotão, TweenInfo.new(0.2), {CorDeFundo3 = Cor3.fromRGB(255, 60, 60)}):Reproduzir()
fim

--- Executado quando o botão X não está sobre
função onXButtonUnhover()
    TweenService:Criar(FecharBotão, TweenInfo.new(0.2), {CorDeFundo3 = Cor3.fromRGB(37, 36, 38)}):Reproduzir()
fim

--- Alterna o método de espionagem remota (quando o botão é clicado)
função onToggleButtonClick()
    se alternar então
        TweenService:Criar(Simples, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(252, 51, 51)}):Reproduzir()
    outro
        TweenService:Criar(Simples, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(68, 206, 91)}):Reproduzir()
    fim
    toggleSpyMethod()
fim

--- Reconecta bringBackOnResize se a viewport atual mudar e também a conecta inicialmente
função connectResize()
    lastCam local = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(bringBackOnResize)
    espaço de trabalho:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
        lastCam:Desconectar()
        se workspace.CurrentCamera então
            lastCam = workspace.CurrentCamera:GetPropertyChangedSignal("Tamanho da Viewport"):Connect(bringBackOnResize)
        fim
    fim)
fim

--- Traz a interface gráfica de volta se ela for perdida fora da tela (conectada à mudança da janela de visualização da câmera)
função bringBackOnResize()
    local currentX = Fundo.PosiçãoAbsoluta.X
    correnteY local = Background.AbsolutePosition.Y
    Tamanho da janela de visualização local = workspace.CurrentCamera.ViewportSize
    se (currentX < 0) ou (currentX > (viewportSize.X - (sideClosed e 131 ou TopBar.AbsoluteSize.X))) então
        se currentX < 0 então
            currentX = 0
        outro
            currentX = viewportSize.X - (sideClosed e 131 ou TopBar.AbsoluteSize.X)
        fim
    fim
    se (currentY < 0) ou (currentY > (viewportSize.Y - (fechado e 19 ou Background.AbsoluteSize.Y) - 36)) então
        se currentY < 0 então
            atualY = 0
        outro
            currentY = viewportSize.Y - (fechado e 19 ou Background.AbsoluteSize.Y) - 36
        fim
    fim
    TweenService.Create(TweenService, Background, TweenInfo.new(0.1), {Posição = UDim2.new(0, currentX, 0, currentY)}):Play()
fim

--- Arrasta a interface gráfica (desde que o mouse seja mantido pressionado)
função onBarInput(entrada)
    se input.UserInputType == Enum.UserInputType.MouseButton1 então
        lastPos local = UserInputService.GetMouseLocation(UserInputService)
        mainPos local = Plano de fundo.PosiçãoAbsoluta
        deslocamento local = mainPos - lastPos
        posição atual local = deslocamento + posição anterior
        RunService.BindToRenderStep(RunService, "arrastar", 1,
            função()
                local newPos = UserInputService.GetMouseLocation(UserInputService)
                se newPos ~= lastPos então
                    corrente localX = (deslocamento + novaPos).X
                    correnteY local = (deslocamento + novaPos).Y
                    Tamanho da janela de visualização local = workspace.CurrentCamera.ViewportSize
                    se (currentX < 0 e currentX < currentPos.X) ou (currentX > (viewportSize.X - (sideClosed e 131 ou TopBar.AbsoluteSize.X)) e currentX > currentPos.X) então
                        se currentX < 0 então
                            currentX = 0
                        outro
                            currentX = viewportSize.X - (sideClosed e 131 ou TopBar.AbsoluteSize.X)
                        fim
                    fim
                    se (currentY < 0 e currentY < currentPos.Y) ou (currentY > (viewportSize.Y - (fechado e 19 ou Background.AbsoluteSize.Y) - 36) e currentY > currentPos.Y) então
                        se currentY < 0 então
                            atualY = 0
                        outro
                            currentY = viewportSize.Y - (fechado e 19 ou Background.AbsoluteSize.Y) - 36
                        fim
                    fim
                    currentPos = Vetor2.new(atualX, atualY)
                    lastPos = newPos
                    TweenService.Create(TweenService, Background, TweenInfo.new(0.1), {Posição = UDim2.new(0, currentPos.X, 0, currentPos.Y)}):Play()
                fim
                se não for UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) então
                    RunService.UnbindFromRenderStep(RunService, "arrastar")
                fim
            fim
        )
    fim
fim

--- Desvanece a tabela de elementos (e os torna invisíveis), retorna uma função para torná-los visíveis novamente
função fadeOut(elementos)
    dados locais = {}
    para _, v em pares(elementos) faça
        se typeof(v) == "Instance" e v:IsA("GuiObject") e v.Visible então
            coroutine.wrap(função()
                dados[v] = {
                    BackgroundTransparency = v.TransparênciaDeFundo
                }
                TweenService:Criar(v, TweenInfo.new(0.5), {Transparência de Fundo = 1}):Reproduzir()
                se v:IsA("TextBox") ou v:IsA("TextButton") ou v:IsA("TextLabel") então
                    dados[v].TextTransparency = v.TextTransparency
                    TweenService:Criar(v, TweenInfo.new(0.5), {Transparência de Texto = 1}):Reproduzir()
                elseif v:IsA("ImageButton") ou v:IsA("ImageLabel") então
                    dados[v].ImageTransparency = v.ImageTransparency
                    TweenService:Criar(v, TweenInfo.new(0.5), {Transparência da Imagem = 1}):Reproduzir()
                fim
                espere(0,5)
                v.Visível = falso
                para i, x em pares(dados[v]) faça
                    v[i] = x
                fim
                dados[v] = verdadeiro
            fim)()
        fim
    fim
    retornar função()
        para i, _ em pares(dados) faça
            coroutine.wrap(função()
                propriedades locais = {
                    BackgroundTransparency = i.BackgroundTransparency
                }
                i.TransparênciaDeFundo = 1
                TweenService:Create(i, TweenInfo.new(0.5), {BackgroundTransparency = propriedades.BackgroundTransparency}):Play()
                se i:IsA("TextBox") ou i:IsA("TextButton") ou i:IsA("TextLabel") então
                    propriedades.TextTransparency = i.TextTransparency
                    i.TransparênciaDeTexto = 1
                    TweenService:Create(i, TweenInfo.new(0.5), {TextTransparency = properties.TextTransparency}):Play()
                caso contrário, i:IsA("ImageButton") ou i:IsA("ImageLabel") então
                    propriedades.ImageTransparency = i.ImageTransparency
                    i.TransparênciaDeImagem = 1
                    TweenService:Create(i, TweenInfo.new(0.5), {ImageTransparency = properties.ImageTransparency}):Play()
                fim
                i.Visível = verdadeiro
            fim)()
        fim
    fim
fim

--- Expande e minimiza a interface gráfica (fechado é o booleano de alternância)
função toggleMinimize(substituir)
    se mainClosing e não substituir ou maximizar então
        retornar
    fim
    mainClosing = verdadeiro
    fechado = não fechado
    se fechado então
        se não for fechado lateralmente, então
            toggleSideTray(verdadeiro)
        fim
        LeftPanel.Visible = verdadeiro
        TweenService:Create(LeftPanel, TweenInfo.new(0.5), {Tamanho = UDim2.new(0, 131, 0, 0)}):Play()
        espere(0,5)
        remotesFadeIn = fadeOut(PainelEsquerdo:GetDescendants())
        espere(0,5)
    outro
        TweenService:Create(LeftPanel, TweenInfo.new(0.5), {Tamanho = UDim2.new(0, 131, 0, 249)}):Play()
        espere(0,5)
        se remotesFadeIn então
            controles remotosFadeIn()
            remotesFadeIn = nulo
        fim
        bringBackOnResize()
    fim
    mainClosing = falso
fim

--- Expande e minimiza a barra lateral (sideClosed é o booleano de alternância)
função toggleSideTray(substituir)
    se sideClosing e não sobrescrever ou maximizar então
        retornar
    fim
    sideClosing = verdadeiro
    sideClosed = não sideClosed
    se sideClosed então
        rightFadeIn = fadeOut(PainelDireito:GetDescendants())
        espere(0,5)
        minimizarTamanho(0,5)
        espere(0,5)
        RightPanel.Visible = falso
    outro
        se fechado então
            toggleMinimize(verdadeiro)
        fim
        RightPanel.Visible = verdadeiro
        maximizarTamanho(0,5)
        espere(0,5)
        se certoFadeIn então
            rightFadeIn()
        fim
        bringBackOnResize()
    fim
    sideClosing = falso
fim

--- Expande a caixa de código para caber na tela para uma visualização mais conveniente
função toggleMaximize()
    se não for fechado lateralmente e não for maximizado, então
        maximizado = verdadeiro
        desabilitar local = Instance.new("TextButton")
        tamanho anterior local = UDim2.new(0, CodeBox.AbsoluteSize.X, 0, CodeBox.AbsoluteSize.Y)
        prevPos local = UDim2.new(0,CodeBox.AbsolutePosition.X, 0, CodeBox.AbsolutePosition.Y)
        desabilitar.Tamanho = UDim2.novo(1, 0, 1, 0)
        disable.BackgroundColor3 = Color3.new()
        desabilitar.BorderSizePixel = 0
        desabilitar.Texto = 0
        desabilitar.ZIndex = 3
        desabilitar.TransparênciaDeFundo = 1
        disable.AutoButtonColor = falso
        CodeBox.ZIndex = 4
        CodeBox.Position = prevPos
        CodeBox.Size = tamanho anterior
        TweenService:Create(CodeBox, TweenInfo.new(0.5), {Tamanho = UDim2.new(0.5, 0, 0.5, 0), Posição = UDim2.new(0.25, 0, 0.25, 0)}):Play()
        TweenService:Criar(desativar, TweenInfo.new(0.5), {TransparênciaDeFundo = 0.5}):Reproduzir()
        desabilitar.MouseButton1Click:Conectar(função()
            se UserInputService:GetMouseLocation().Y + 36 >= CodeBox.AbsolutePosition.Y e UserInputService:GetMouseLocation().Y + 36 <= CodeBox.AbsolutePosition.Y + CodeBox.AbsoluteSize.Y
                e UserInputService:GetMouseLocation().X >= CodeBox.AbsolutePosition.X e UserInputService:GetMouseLocation().X <= CodeBox.AbsolutePosition.X + CodeBox.AbsoluteSize.X então
                retornar
            fim
            TweenService:Create(CodeBox, TweenInfo.new(0.5), {Tamanho = prevSize, Posição = prevPos}):Play()
            TweenService:Criar(desativar, TweenInfo.new(0.5), {TransparênciaDeFundo = 1}):Reproduzir()
            espere(0,5)
            desabilitar:Destruir()
            CodeBox.Size = UDim2.new(1, 0, 0,5, 0)
            CodeBox.Position = UDim2.new(0, 0, 0, 0)
            CodeBox.ZIndex = 0
            maximizado = falso
        fim)
    fim
fim

--- Verifica se o cursor está dentro do intervalo de redimensionamento
--- @param p Vector2
função isInResizeRange(p)
    relativo localP = p - Background.AbsolutePosition
    intervalo local = 5
    se relativeP.X >= TopBar.AbsoluteSize.X - intervalo e relativeP.Y >= Background.AbsoluteSize.Y - intervalo
        e relativeP.X <= TopBar.AbsoluteSize.X e relativeP.Y <= Background.AbsoluteSize.Y então
        retornar verdadeiro, 'B'
    caso contrário, relativeP.X >= TopBar.AbsoluteSize.X - intervalo e relativeP.X <= Background.AbsoluteSize.X então
        retornar verdadeiro, 'X'
    elseif relativeP.Y >= Background.AbsoluteSize.Y - intervalo e relativeP.Y <= Background.AbsoluteSize.Y então
        retornar verdadeiro, 'Y'
    fim
    retornar falso
fim

--- Chamado quando o mouse entra no SimpleSpy
função mouseEntered()
    Cursor personalizado local = Instance.new("ImageLabel")
    customCursor.Size = UDim2.fromOffset(200, 200)
    customCursor.ZIndex = 1e5
    customCursor.BackgroundTransparency = 1
    customCursor.Image = ""
    customCursor.Parent = SimpleSpy2
    UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
    RunService:BindToRenderStep("SIMPLESPY_CURSOR", 1, função()
        se mouseInGui e _G.SimpleSpyExecuted então
            Localização do mouse local = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
            customCursor.Position = UDim2.fromOffset(mouseLocation.X - customCursor.AbsoluteSize.X / 2, mouseLocation.Y - customCursor.AbsoluteSize.Y / 2)
            local inRange, tipo = isInResizeRange(mouseLocation)
            se inRange e não sideClosed e não fechado então
                customCursor.Image = type == 'B' e "rbxassetid://6065821980" ou type == 'X' e "rbxassetid://6065821086" ou type == 'Y' e "rbxassetid://6065821596"
            elseif inRange e não fechado e tipo == 'Y' ou tipo == 'B' então
                customCursor.Image = "rbxassetid://6065821596"
            caso contrário, customCursor.Image ~= "rbxassetid://6065775281" então
                customCursor.Image = "rbxassetid://6065775281"
            fim
        outro
            UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
            Cursor personalizado:Destruir()
            RunService:UnbindFromRenderStep("SIMPLESPY_CURSOR")
        fim
    fim)
fim

--- Chamado quando o mouse se move
função mouseMoved()
    mousePos local = UserInputService:GetMouseLocation() - Vector2.new(0, 36)
    se não estiver fechado
    e mousePos.X >= TopBar.AbsolutePosition.X e mousePos.X <= TopBar.AbsolutePosition.X + TopBar.AbsoluteSize.X
    e mousePos.Y >= Background.AbsolutePosition.Y e mousePos.Y <= Background.AbsolutePosition.Y + Background.AbsoluteSize.Y então
        se não for mouseInGui então
            mouseInGui = verdadeiro
            mouseEntered()
        fim
    outro
        mouseInGui = falso
    fim
fim

--- Ajusta os elementos da interface do usuário para o tamanho 'Maximizado'
função maximizeSize(velocidade)
    se não for velocidade então
        velocidade = 0,05
    fim
    TweenService:Create(LeftPanel, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }):Play()
    TweenService:Create(RightPanel, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(Fundo.AbsoluteSize.X - PainelEsquerdo.AbsoluteSize.X, Fundo.AbsoluteSize.Y - BarraSuperior.AbsoluteSize.Y) }):Play()
    TweenService:Create(TopBar, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(Background.AbsoluteSize.X, TopBar.AbsoluteSize.Y) }):Play()
    TweenService:Create(ScrollingFrame, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(Fundo.AbsoluteSize.X - PainelEsquerdo.AbsoluteSize.X, 110), Posição = UDim2.fromOffset(0, Fundo.AbsoluteSize.Y - 119 - BarraSuperior.AbsoluteSize.Y) }):Play()
    TweenService:Create(CodeBox, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(Fundo.TamanhoAbsoluto.X - PainelEsquerdo.TamanhoAbsoluto.X, Fundo.TamanhoAbsoluto.Y - 119 - BarraSuperior.TamanhoAbsoluto.Y) }):Play()
    TweenService:Create(LogList, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(LogList.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y - 18) }):Play()
fim

--- Ajusta os elementos da interface do usuário para fechar a lateral
função minimizeSize(velocidade)
    se não for velocidade então
        velocidade = 0,05
    fim
    TweenService:Create(LeftPanel, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }):Play()
    TweenService:Create(RightPanel, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(0, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y) }):Play()
    TweenService:Create(TopBar, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(LeftPanel.AbsoluteSize.X, TopBar.AbsoluteSize.Y) }):Play()
    TweenService:Create(ScrollingFrame, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(0, 119), Posição = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y) }):Play()
    TweenService:Create(CodeBox, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(0, Background.AbsoluteSize.Y - 119 - TopBar.AbsoluteSize.Y) }):Play()
    TweenService:Create(LogList, TweenInfo.new(speed), { Tamanho = UDim2.fromOffset(LogList.AbsoluteSize.X, Background.AbsoluteSize.Y - TopBar.AbsoluteSize.Y - 18) }):Play()
fim

--- Chamado na entrada do usuário enquanto o mouse está no quadro 'Fundo'
--- @param entrada InputObject
função backgroundUserInput(entrada)
    local inRange, tipo = isInResizeRange(UserInputService:GetMouseLocation() - Vector2.new(0, 36))
    se input.UserInputType == Enum.UserInputType.MouseButton1 e inRange então
        lastPos local = UserInputService:GetMouseLocation()
        deslocamento local = Background.AbsoluteSize - lastPos
        posição atual local = posição anterior + deslocamento
        RunService:BindToRenderStep("SIMPLESPY_RESIZE", 1, função()
            local newPos = UserInputService:GetMouseLocation()
            se newPos ~= lastPos então
                corrente localX = (novaPos + deslocamento).X
                correnteY local = (novaPos + deslocamento).Y
                se currentX < 450 então
                    currentX = 450
                fim
                se currentY < 268 então
                    atualY = 268
                fim
                currentPos = Vetor2.new(atualX, atualY)
                Background.Size = UDim2.fromOffset((não sideClosed e não fechado e (tipo == "X" ou tipo == "B")) e currentPos.X ou Background.AbsoluteSize.X, (--[[(não sideClosed ou currentPos.X <= LeftPanel.AbsolutePosition.X + LeftPanel.AbsoluteSize.X) e]] não fechado e (tipo == "Y" ou tipo == "B")) e currentPos.Y ou Background.AbsoluteSize.Y)
                se sideClosed então
                    minimizarTamanho()
                outro
                    maximizarTamanho()
                fim
                lastPos = newPos
            fim
        fim)
        tabela.insert(conexões, UserInputService.InputEnded:Connect(função(inputE)
            se entrada == inputE então
                RunService:UnbindFromRenderStep("SIMPLESPY_RESIZE")
            fim
        fim))
    fim
fim

--- Obtém o jogador de quem a instância é descendente
função getPlayerFromInstance(instância)
    para _, v em pares(Players:GetPlayers()) faça
        se v.Character e (instance:IsDescendantOf(v.Character) ou instância == v.Character) então
            retornar v
        fim
    fim
fim

--- Executa no MouseButton1Click de um quadro de evento
função eventSelect(quadro)
    se selecionado e selecionado.Log então
        TweenService:Criar(selecionado.Log.Button, TweenInfo.new(0.5), {CorDeFundo3 = Cor3.fromRGB(0, 0, 0)}):Reproduzir()
        selecionado = nulo
    fim
    para _, v em pares(logs) faça
        se quadro == v.Log então
            selecionado = v
        fim
    fim
    se selecionado e selecionado.Log então
        TweenService:Criar(frame.Button, TweenInfo.new(0.5), {CorDeFundo3 = Cor3.fromRGB(92, 126, 229)}):Reproduzir()
        caixa de código:setRaw(selecionado.GenScript)
    fim
    se sideClosed então
        toggleSideTray()
    fim
fim

--- Atualiza o tamanho da tela para caber na quantidade atual de botões de função
função updateFunctionCanvas()
    ScrollingFrame.CanvasSize = UDim2.fromOffset(UIGridLayout.AbsoluteContentSize.X, UIGridLayout.AbsoluteContentSize.Y)
fim

--- Atualiza o tamanho da tela para se ajustar à quantidade de controles remotos atuais
função updateRemoteCanvas()
    LogList.CanvasSize = UDim2.fromOffset(UIListLayout.AbsoluteContentSize.X, UIListLayout.AbsoluteContentSize.Y)
fim

--- Permite alternar a dica de ferramenta e a configuração fácil da descrição do arquivo
--- @param enable booleano
--- @param sequência de texto
função makeToolTip(habilitar, texto)
    se habilitar então
        se ToolTip.Visible então
            ToolTip.Visible = falso
            RunService:UnbindFromRenderStep("Dica de ferramenta")
        fim
        local primeiro = verdadeiro
        RunService:BindToRenderStep("ToolTip", 1, função()
            local superiorEsquerdo = Vetor2.novo(Mouse.X + 20, Mouse.Y + 20)
            local bottomRight = topLeft + ToolTip.AbsoluteSize
            se topLeft.X < 0 então
                superiorEsquerda = Vetor2.novo(0, superiorEsquerda.Y)
            caso contrário, bottomRight.X > workspace.CurrentCamera.ViewportSize.X então
                superiorEsquerda = Vetor2.novo(espaço de trabalho.CurrentCamera.ViewportSize.X - Dica de ferramenta.AbsoluteSize.X, superiorEsquerda.Y)
            fim
            se topLeft.Y < 0 então
                superiorEsquerda = Vetor2.novo(superiorEsquerda.X, 0)
            caso contrário, bottomRight.Y > workspace.CurrentCamera.ViewportSize.Y - 35, então
                superiorEsquerda = Vetor2.novo(superiorEsquerda.X, área de trabalho.CurrentCamera.ViewportSize.Y - Dica de ferramenta.AbsoluteSize.Y - 35)
            fim
            se topLeft.X <= Mouse.X e topLeft.Y <= Mouse.Y então
                topLeft = Vector2.new(Mouse.X - Dica de ferramenta.TamanhoAbsoluto.X - 2, Mouse.Y - Dica de ferramenta.TamanhoAbsoluto.Y - 2)
            fim
            se primeiro então
                ToolTip.Position = UDim2.fromOffset(superiorEsquerdo.X, superiorEsquerdo.Y)
                primeiro = falso
            outro
                Dica de ferramenta: TweenPosition(UDim2.fromOffset(topLeft.X, topLeft.Y), "Fora", "Linear", 0,1)
            fim
        fim)
        TextLabel.Text = texto
        ToolTip.Visible = verdadeiro
    outro
        se ToolTip.Visible então
            ToolTip.Visible = falso
            RunService:UnbindFromRenderStep("Dica de ferramenta")
        fim
    fim
fim

--- Cria um novo botão de função (abaixo da caixa de código)
--- @param nome string
---@param descrição da função
---Função @param onClick
função newButton(nome, descrição, onClick)
    botão local = FunctionTemplate:Clone()
    botão.Texto.Texto = nome
    botão.Button.MouseEnter:Connect(função()
        makeToolTip(verdadeiro, descrição())
    fim)
    botão.Button.MouseLeave:Connect(função()
        makeToolTip(falso)
    fim)
    botão.AncestryChanged:Connect(função()
        makeToolTip(falso)
    fim)
    botão.Botão.BotãoDoMouse1Clique:Conectar(função(...)
        onClick(botão, ...)
    fim)
    botão.Parent = ScrollingFrame
    updateFunctionCanvas()
fim

--- Adiciona novo controle remoto aos logs
--- @param nome string O nome do controle remoto que está sendo registrado
--- @param tipo string O tipo do controle remoto que está sendo registrado ('função' ou 'evento')
--- @param gen_script qualquer
--- @param remoto qualquer
--- @param function_info string
--- @param bloqueou qualquer
função newRemote(tipo, nome, gen_script, remoto, function_info, bloqueado, src)
    Quadro remoto local = ModeloRemoto:Clone()
    remoteFrame.Text.Text = nome
    remoteFrame.ColorBar.BackgroundColor3 = tipo == "evento" e Color3.new(255, 242, 0) ou Color3.fromRGB(99, 86, 245)
    id local = Instância.new("IntValue")
    id.Nome = "ID"
    id.Valor = #logs + 1
    id.Parent = QuadroRemoto
    registros[#registros + 1] = {
        Nome = nome,
        GenScript = gen_script,
        Função = function_info,
        Remoto = remoto,
        Log = QuadroRemoto,
        Bloqueado = bloqueado,
        Fonte = src
    }
    se bloqueado então
        logs[#logs].GenScript = "-- ESTE CONTROLE REMOTO FOI IMPEDIDO DE DISPARAR O SERVIDOR PELO SIMPLESPY\n\n" .. logs[#logs].GenScript
    fim
    conexão local = remoteFrame.Button.MouseButton1Click:Connect(function()
        eventSelect(quadroremoto)
    fim)
    se layoutOrderNum < 1 então
        layoutOrderNum = 999999999
    fim
    remoteFrame.LayoutOrder = layoutOrderNum
    layoutOrderNum = layoutOrderNum - 1
    remoteFrame.Parent = Lista de Logs
    tabela.insert(remoteLogs, 1, {conectar, remoteFrame})
    limpar()
    updateRemoteCanvas()
fim

--- Gera um script a partir dos argumentos fornecidos (o primeiro tem que ser o caminho remoto)
função genScript(remoto, ...)
    prevTables = {}
    geração local = ""
    argumentos locais = {...}
    se #args > 0 então
        se não pcall(função()
                gen = v2v({args = args}) .. "\n"
            fim)
        então
            gen = gen .. "-- Falha em TableToString! Revertendo para a funcionalidade legada (os resultados podem variar)\nargs locais = {"
            se
                não pcall(
                    função()
                        para i, v em pares(args) faça
                            se tipo(i) ~= "Instância" e tipo(i) ~= "dados do usuário" então
                                gen = gen .. "\n [" .. tostring(i) .. "] = "
                            elseif tipo(i) == "string" então
                                gen = gen .. '\n ["' .. tostring(i) .. '"] = '
                            elseif type(i) == "userdata" e typeof(i) ~= "Instance" então
                                gen = gen .. "\n [" .. typeof(i) .. ".new(" .. tostring(i) .. ")] = "
                            elseif tipo(i) == "dadosdousuário" então
                                gen = gen.. "\n [jogo." .. i:GetFullName() .. ")] = "
                            fim
                            se tipo(v) ~= "Instância" e tipo(v) ~= "dados do usuário" então
                                gen = gen .. tostring(v)
                            elseif tipo(v) == "string" então
                                gen = gen .. '"' .. tostring(v) .. '"'
                            elseif type(v) == "userdata" e typeof(v) ~= "Instance" então
                                gen = gen .. typeof(v) .. ".new(" .. tostring(v) .. ")"
                            elseif tipo(v) == "dados do usuário" então
                                gen = gen.. "jogo." .. v:GetFullName()
                            fim
                        fim
                        gen = gen .. "\n}\n\n"
                    fim
                )
             então
                gen = gen .. "}\n-- Falha na operação tableToString legada! Não foi possível descompilar."
            fim
        fim
        se não for remoto:IsDescendantOf(game) e não for getnilrequired então
            gen = "função getNil(nome,classe) para _,v em pares(getnilinstances())faça se v.ClassName==classe e v.Name==nome então retorne v;fim fim fim\n\n" .. gen
        fim
        se remoto:IsA("RemoteEvent") então
            gen = gen .. v2s(remoto) .. ":FireServer(descompactar(argumentos))"
        elseif remoto:IsA("FunçãoRemota") então
            gen = gen .. v2s(remoto) .. ":InvokeServer(descompactar(argumentos))"
        fim
    outro
        se remoto:IsA("RemoteEvent") então
            gen = gen .. v2s(remoto) .. ":FireServer()"
        elseif remoto:IsA("FunçãoRemota") então
            gen = gen .. v2s(remoto) .. ":InvokeServer()"
        fim
    fim
    gen = "" .. gen
    prevTables = {}
    retornar gen
fim

--- valor para string: valor, string (saída), nível (recuo), tabela pai, nome da var, é de para var
função v2s(v, l, p, n, vtv, i, pt, caminho, tabelas)
    se typeof(v) == "número" então
        se v == math.huge então
            retornar "math.huge"
        elseif tostring(v):match("nan") então
            retornar "0/0 --[[NaN]]"
        fim
        retornar para string(v)
    elseif typeof(v) == "boolean" então
        retornar para string(v)
    elseif typeof(v) == "string" então
        retornar formatstr(v)
    elseif typeof(v) == "função" então
        retornar f2s(v)
    elseif typeof(v) == "tabela" então
        retornar t2s(v, l, p, n, vtv, i, pt, caminho, tabelas)
    elseif typeof(v) == "Instância" então
        retornar i2p(v)
    elseif typeof(v) == "userdata" então
        retornar "newproxy(true)"
    elseif tipo(v) == "dados do usuário" então
        retornar u2s(v)
    outro
        retornar "nulo --[[" .. typeof(v) .. "]]"
    fim
fim

--- valor para variável
--- @param t any
função v2v(t)
    topstr = ""
    bottomstr = ""
    getnilrequired = falso
    ret local = ""
    contagem local = 1
    para i, v em pares(t) faça
        se tipo(i) == "string" e i:match("^[%a_]+[%w_]*$") então
            ret = ret .. "local " .. i .. " = " .. v2s(v, nulo, nulo, i, verdadeiro) .. "\n"
        elseif tostring(i):match("^[%a_]+[%w_]*$") então
            ret = ret .. "local " .. tostring(i):lower() .. "_" .. tostring(contagem) .. " = " .. v2s(v, nulo, nulo, tostring(i):lower() .. "_" .. tostring(contagem), verdadeiro) .. "\n"
        outro
            ret = ret .. "local " .. tipo(v) .. "_" .. tostring(contagem) .. " = " .. v2s(v, nulo, nulo, tipo(v) .. "_" .. tostring(contagem), verdadeiro) .. "\n"
        fim
        contagem = contagem + 1
    fim
    se getnilrequired então
        topstr = "função getNil(nome,classe) para _,v em pares(getnilinstances())faça se v.ClassName==classe e v.Name==nome então retorne v;fim fim fim\n" .. topstr
    fim
    se #topstr > 0 então
        ret = topstr .. "\n" .. ret
    fim
    se #bottomstr > 0 então
        ret = ret ..bottomstr
    fim
    retornar ret
fim

--- tabela para string
--- @param t tabela
--- @param l número
--- @param p tabela
--- @param n string
--- @param vtv booleano
--- @param i any
--- @param pt tabela
--- @param caminho string
--- @param tabelas tabela
função t2s(t, l, p, n, vtv, i, pt, caminho, tabelas)
    para k, x em pares(getrenv()) faça
        isgucci local, gpath
        se rawequal(x, t) então
            isgucci, gpath = verdadeiro, ""
        elseif tipo(x) == "tabela" então
            isgucci, gpath = v2p(t, x)
        fim
        se isgucci então
            se tipo(k) == "string" e k:match("^[%a_]+[%w_]*$") então
                retornar k..gpath
            outro
                retornar "getrenv()[" .. v2s(k) .. "]" .. gpath
            fim
        fim
    fim
    se não for o caminho então
        caminho = ""
    fim
    se não eu então
        l = 0
        tabelas = {}
    fim
    se não p então
        p = t
    fim
    para _, v em pares(tabelas) faça
        se n e rawequal(v, t) então
            bottomstr = bottomstr .. "\n" .. tostring(n) .. tostring(caminho) .. " = " .. tostring(n) .. tostring(({v2p(v, p)})[2])
            retornar "{} --[[DUPLICADO]]"
        fim
    fim
    tabela.insert(tabelas, t)
    local s = "{"
    tamanho local = 0
    l = l + recuo
    para k, v em pares(t) faça
        tamanho = tamanho + 1
        se tamanho > (_G.SimpleSpyMaxTableSize e _G.SimpleSpyMaxTableSize ou 1000) então
            quebrar
        fim
        se rawequal(k, t) então
            bottomstr = bottomstr .. "\n" .. tostring(n) .. tostring(caminho) .. "[" .. tostring(n) .. tostring(caminho) .. "]" .. " = " .. (v == k e tostring(n) .. tostring(caminho) ou v2s(v, l, p, n, vtv, k, t, caminho .. "[" .. tostring(n) .. tostring(caminho) .. "]", tabelas))
            tamanho -= 1
            continuar
        fim
        caminhoatual local = ""
        se tipo(k) == "string" e k:match("^[%a_]+[%w_]*$") então
            CaminhoAtual = "." .. k
        outro
            currentPath = "[" .. v2s(k, nulo, p, n, vtv, i, pt, caminho) .. "]"
        fim
        s = s .. "\n" .. string.rep(" ", l) .. "[" .. v2s(k, l, p, n, vtv, k, t, caminho .. caminhoAtual, tabelas) .. "] = " .. v2s(v, l, p, n, vtv, k, t, caminho .. caminhoAtual, tabelas) .. ","
    fim
    se #s > 1 então
        s = s:sub(1, #s - 1)
    fim
    se tamanho > 0 então
        s = s .. "\n" .. string.rep(" ", l - recuo)
    fim
    retornar s .. "}"
fim

--- função para string
função f2s(f)
    para k, x em pares(getgenv()) faça
        isgucci local, gpath
        se rawequal(x, f) então
            isgucci, gpath = verdadeiro, ""
        elseif tipo(x) == "tabela" então
            isgucci, gpath = v2p(f, x)
        fim
        se isgucci então
            se tipo(k) == "string" e k:match("^[%a_]+[%w_]*$") então
                retornar k..gpath
            outro
                retornar "getgenv()[" .. v2s(k) .. "]" .. gpath
            fim
        fim
    fim
    -- uwu algumas coisas legais aqui quando o bork terminar
    -- se SimpleSpy.GetExternalLoader então
    --local ExternalLoader = SimpleSpy:GetExternalLoader()
    -- local carregado, caminho = pcall(function() ExternalLoader:LoadAsset("Bork_Functions") fim)
    -- se carregado então
    -- funções locais = loadfile(caminho .. "functions.lua")
    -- saída local = funções[f]
    -- se sair então
    -- retornar para fora
    -- fim
    -- fim
    -- fim
    -- isgucci local, gpath = v2p(f, getgc())
    -- se isgucci então
    -- retornar "getgc()" .. gpath
    -- fim
    se debug.getinfo(f).name:match("^[%a_]+[%w_]*$") então
        retornar "função()fim --[[" .. debug.getinfo(f).nome .. "]]"
    fim
    retornar "função()fim --[[" .. tostring(f) .. "]]"
fim

--- instância para caminho
--- @param i userdata
função i2p(i)
    jogador local = getplayer(i)
    pai local = i
    saída local = ""
    se pai == nulo então
        retornar "nulo"
    elseif jogador então
        enquanto verdadeiro faça
            se pai e pai == jogador.Personagem então
                se jogador == Players.LocalPlayer então
                    retornar 'jogo:GetService("Jogadores").LocalPlayer.Character' .. fora
                outro
                    retornar i2p(jogador) .. ".Personagem" .. fora
                fim
            outro
                se parent.Name:match("[%a_]+[%w+]*") ~= parent.Name então
                    out = '[' .. formatstr(parent.Name) .. ']' .. out
                outro
                    out = "." .. nome.pai .. out
                fim
            fim
            pai = pai.Pai
        fim
    elseif pai ~= jogo então
        enquanto verdadeiro faça
            se pai e pai.Pai == jogo então
                se jogo:GetService(parent.ClassName) então
                    se parent.ClassName == "Espaço de trabalho" então
                        retornar "espaço de trabalho" .. fora
                    outro
                        retornar 'jogo:GetService("' .. parent.ClassName .. '")' .. out
                    fim
                outro
                    se parent.Name:match("[%a_]+[%w_]*") então
                        retornar "jogo". .. nome.pai .. fora
                    outro
                        retornar 'jogo[' .. formatstr(parent.Name) .. ']' .. fora
                    fim
                fim
            elseif pai.Parente == nulo então
                getnilrequired = verdadeiro
                retornar 'getNil(' .. formatstr(parent.Name) .. ', "' .. parent.ClassName .. '")' .. fora
            caso contrário, se pai == Players.LocalPlayer, então
                out = ".LocalPlayer" .. out
            outro
                se parent.Name:match("[%a_]+[%w_]*") ~= parent.Name então
                    out = '[' .. formatstr(parent.Name) .. ']' .. out
                outro
                    out = "." .. nome.pai .. out
                fim
            fim
            pai = pai.Pai
        fim
    outro
        retornar "jogo"
    fim
fim

--- dados do usuário para string: dados do usuário
--- @param u dados do usuário
função u2s(u)
    se typeof(u) == "TweenInfo" então
        -- Informações sobre adolescentes
        retornar "TweenInfo.new(" ..tostring(u.Time) .. ", Enum.EasingStyle." ..tostring(u.EasingStyle) .. ", Enum.EasingDirection." ..tostring(u.EasingDirection) .. ", " ..tostring(u.RepeatCount) .. ", " ..tostring(u.Reverses) .. ", " ..tostring(u.DelayTime) .. ")"
    elseif typeof(u) == "Ray" então
        -- Raio
        retornar "Ray.new(" .. u2s(u.Origin) .. ", " .. u2s(u.Direction) .. ")"
    elseif typeof(u) == "NumberSequence" então
        -- Sequência Numérica
        ret local = "NumberSequence.new("
        para i, v em pares(u.KeyPoints) faça
            ret = ret .. tostring(v)
            se i < #u.Keypoints então
                ret = ret .. ", "
            fim
        fim
        retornar ret .. ")"
    elseif typeof(u) == "DockWidgetPluginGuiInfo" então
        -- DockWidgetPluginGuiInfo
        retornar "DockWidgetPluginGuiInfo.new(Enum.InitialDockState" .. tostring(u) .. ")"
    elseif typeof(u) == "ColorSequence" então
        -- Sequência de cores
        ret local = "ColorSequence.new("
        para i, v em pares(u.KeyPoints) faça
            ret = ret .. "Color3.new(" ..tostring(v) .. ")"
            se i < #u.Keypoints então
                ret = ret .. ", "
            fim
        fim
        retornar ret .. ")"
    elseif typeof(u) == "BrickColor" então
        -- Cor de tijolo
        retornar "BrickColor.new(" .. tostring(u.Number) .. ")"
    elseif typeof(u) == "NumberRange" então
        -- Intervalo numérico
        retornar "NumberRange.new(" .. tostring(u.Min) .. ", " .. tostring(u.Max) .. ")"
    elseif typeof(u) == "Região3" então
        -- Região 3
        centro local = u.CFrame.Position
        tamanho local = u.CFrame.Size
        vetor local1 = centro - tamanho / 2
        vetor local2 = centro + tamanho / 2
        retornar "Region3.new(" .. u2s(vetor1) .. ", " .. u2s(vetor2) .. ")"
    elseif typeof(u) == "Faces" então
        -- Rostos
        rostos locais = {}
        se u.Top então
            tabela.inserir(faces, "Enum.NormalId.Top")
        fim
        se u.Bottom então
            tabela.inserir(faces, "Enum.NormalId.Bottom")
        fim
        se u.Esquerda então
            tabela.inserir(faces, "Enum.NormalId.Left")
        fim
        se você. Certo então
            tabela.inserir(faces, "Enum.NormalId.Right")
        fim
        se você. Naquela época
            tabela.inserir(faces, "Enum.NormalId.Back")
        fim
        se u.Front então
            tabela.inserir(faces, "Enum.NormalId.Front")
        fim
        retornar "Faces.new(" .. tabela.concat(faces, ", ") .. ")"
    elseif typeof(u) == "EnumItem" então
        retornar para string(u)
    elseif typeof(u) == "Enums" então
        retornar "Enum"
    elseif typeof(u) == "Enum" então
        retornar "Enum." .. tostring(u)
    elseif typeof(u) == "RBXScriptSignal" então
        retornar "nulo --[[RBXScriptSignal]]"
    elseif typeof(u) == "Vector3" então
        retornar string.format("Vector3.new(%s, %s, %s)", v2s(uX), v2s(uY), v2s(uZ))
    elseif typeof(u) == "CFrame" então
        retornar string.format("CFrame.new(%s, %s)", v2s(u.Position), v2s(u.LookVector))
    elseif typeof(u) == "DockWidgetPluginGuiInfo" então
        retornar string.format("DockWidgetPluginGuiInfo(%s, %s, %s, %s, %s, %s, %s)", "Enum.InitialDockState.Right", v2s(u.InitialEnabled), v2s(u.InitialEnabledShouldOverrideRestore), v2s(u.FloatingXSize), v2s(u.FloatingYSize), v2s(u.MinWidth), v2s(u.MinHeight))
    elseif typeof(u) == "RBXScriptConnection" então
        retornar "nulo --[[RBXScriptConnection " .. tostring(u) .. "]]"
    elseif typeof(u) == "RaycastResult" então
        retornar "nulo --[[RaycastResult " .. tostring(u) .. "]]"
    elseif typeof(u) == "PathWaypoint" então
        retornar string.format("PathWaypoint.new(%s, %s)", v2s(u.Position), v2s(u.Action))
    outro
        retornar typeof(u) .. ".new(" .. tostring(u) .. ")"
    fim
fim

--- Obtém o jogador de quem a instância é descendente
função getplayer(instância)
    para _, v em pares(Players:GetPlayers()) faça
        se v.Character e (instance:IsDescendantOf(v.Character) ou instância == v.Character) então
            retornar v
        fim
    fim
fim

--- valor para caminho (na tabela)
função v2p(x, t, caminho, anterior)
    se não for o caminho então
        caminho = ""
    fim
    se não anterior então
        anterior = {}
    fim
    se rawequal(x, t) então
        retornar verdadeiro, ""
    fim
    para i, v em pares(t) faça
        se rawequal(v, x) então
            se tipo(i) == "string" e i:match("^[%a_]+[%w_]*$") então
                retornar verdadeiro, (caminho .. "." .. i)
            outro
                retornar verdadeiro, (caminho .. "[" .. v2s(i) .. "]")
            fim
        fim
        se tipo(v) == "tabela" então
            duplicata local = falso
            para _, y em pares(anterior) faça
                se rawequal(y, v) então
                    duplicado = verdadeiro
                fim
            fim
            se não duplicar então
                tabela.inserir(anterior, t)
                achados locais
                encontrado, p = v2p(x, v, caminho, anterior)
                se encontrado então
                    se tipo(i) == "string" e i:match("^[%a_]+[%w_]*$") então
                        retornar verdadeiro, "." .. i .. p
                    outro
                        retornar verdadeiro, "[" .. v2s(i) .. "]" .. p
                    fim
                fim
            fim
        fim
    fim
    retornar falso, ""
fim

--- formato s: string, byte criptografado (para símbolos estranhos)
formato de função str(s)
    retornar '"' .. handlespecials(s) .. '"'
fim

--- Adiciona \'s ao texto como uma substituição para caracteres de espaço em branco e outras coisas porque string.format não pode ser executado
identificador(es) de função especiais
    local i = 0
    repita
        i = i + 1
        char local = s:sub(i, i)
        se string.byte(char) então
            se char == "\n" então
                s = s:sub(0, i - 1) .. "\\n" .. s:sub(i + 1, -1)
                i = i + 1
            elseif char == "\t" então
                s = s:sub(0, i - 1) .. "\\t" .. s:sub(i + 1, -1)
                i = i + 1
            elseif char == "\\" então
                s = s:sub(0, i - 1) .. "\\\\" .. s:sub(i + 1, -1)
                i = i + 1
            elseif char == '"' então
                s = s:sub(0, i - 1) .. '\\"' .. s:sub(i + 1, -1)
                i = i + 1
            elseif string.byte(char) > 126 ou string.byte(char) < 32 então
                s = s:sub(0, i - 1) .. "\\" .. string.byte(char) .. s:sub(i + 1, -1)
                i = i + #tostring(string.byte(char))
            fim
        fim
    até char == ""
    retornar s
fim

--- encontra script de 'src' de getinfo, retorna nulo se não for encontrado
--- @param src string
função getScriptFromSrc(src)
    Caminho real local
    teste de execução local
    --- @digite número
    locais s, e
    correspondência local = falso
    se src:sub(1, 1) == "=" então
        realPath = jogo
        s = 2
    outro
        runningTest = src:sub(2, e e e - 1 ou -1)
        para _, v em pares(getnilinstances()) faça
            se v.Name == runningTest então
                realPath = v
                quebrar
            fim
        fim
        s = #runningTest + 1
    fim
    se realPath então
        e = src:sub(s, -1):find("%.")
        local i = 0
        repita
            eu += 1
            se não e então
                runningTest = src:sub(s, -1)
                teste local = realPath.FindFirstChild(realPath, runningTest)
                se teste então
                    realPath = teste
                fim
                correspondência = verdadeiro
            outro
                runningTest = src:sub(s, e)
                teste local = realPath.FindFirstChild(realPath, runningTest)
                ano local = e
                se teste então
                    realPath = teste
                    s = e + 2
                    e = src:sub(e + 2, -1):find("%.")
                    e = e e + yeOld ou e
                outro
                    e = src:sub(e + 2, -1):find("%.")
                    e = e e + yeOld ou e
                fim
            fim
        até partida ou i >= 50
    fim
    retornar realPath
fim

--- agenda a função fornecida (e a chama com quaisquer argumentos depois)
função schedule(f, ...)
    tabela.insert(agendado, {f, ...})
fim

--- o grande (bem, para ser sincero, pequeno agora) garoto agendador de tarefas, lida com quase tudo o mais rápido possível
função taskscheduler()
    se não alternar então
        agendado = {}
        retornar
    fim
    se #agendado > 1000 então
        tabela.remove(agendado, #agendado)
    fim
    se #agendado > 0 então
        local currentf = programado[1]
        tabela.remove(agendado, 1)
        se type(currentf) == "tabela" e type(currentf[1]) == "função" então
            pcall(descompactar(currentf))
        fim
    fim
fim

--- Lida com logs remotos
função remoteHandler(funçãogancho, nomedométodo, remoto, argumentos, função, chamada)
    se remoto:IsA("RemoteEvent") ou remoto:IsA("RemoteFunction") então
        se funcEnabled e não estiver chamando então
            _, chamando = pcall(getScriptFromSrc, debug.getinfo(func).source)
        fim
        coroutine.wrap(função()
            se remoteSignals[remoto] então
                remoteSignals[remoto]:Fogo(argumentos)
            fim
        fim)()
        se autobloqueio então
            se excluindo[remoto] então
                retornar
            fim
            se não história[remota] então
                histórico[remoto] = {badOccurances = 0, lastCall = tick()}
            fim
            se tick() - history[remote].lastCall < 1 então
                histórico[remoto].badOccurances += 1
                retornar
            outro
                histórico[remoto].badOccurances = 0
            fim
            se history[remote].badOccurances > 3 então
                excluindo[remoto] = verdadeiro
                retornar
            fim
            histórico[remoto].últimaChamada = tick()
        fim
        função localInfoStr
        fonte local
        se func e islclosure(func) então
            função localInfo = {}
            pcall(função() functionInfo.info = debug.getinfo(função) fim)
            pcall(função() functionInfo.constants = debug.getconstants(função) fim)
            pcall(função() functionInfoStr = v2v{functionInfo = functionInfo} fim)
            pcall(function() se tipo(chamada) == "dados do usuário" então src = chamada fim fim)
        fim
        se methodName:lower() == "fireserver" então
            newRemote("evento", remoto.Nome, genScript(remoto, tabela.descompactar(argumentos)), remoto, functionInfoStr, (lista de bloqueios[remoto] ou lista de bloqueios[remoto.Nome]), src)
        elseif methodName:lower() == "invokeserver" então
            newRemote("function", remote.Name, genScript(remote, table.unpack(args)), remote, functionInfoStr, (blocklist[remote] ou blocklist[remote.Name]), src)
        fim
    fim
fim

--- Usado para função de gancho
função hookRemote(remoteType, remoto, ...)
    argumentos locais = {...}
    se remoteHooks[remoto] então
        args = remoteHooks[remoto](args)
    fim
    se typeof(remoto) == "Instância" e não (blacklist[remoto] ou blacklist[remoto.Nome]) então
        função local
        chamadas locais
        se funcEnabled então
            função = debug.getinfo(4).func
            chamando = useGetCallingScript e getcallingscript() ou nulo
        fim
        schedule(remoteHandler, true, remoteType == "RemoteEvent" e "fireserver" ou "invokeserver", remoto, args, func, chamando)
        se (lista de bloqueios[remoto] ou lista de bloqueios[remoto.Nome]) então
            retornar
        fim
    fim
    se remoteType == "RemoteEvent" então
        se remoteHooks[remoto] então
            retornar originalEvent(remoto, descompactar(argumentos))
        fim
        retornar originalEvent(remoto, ...)
    outro
        se remoteHooks[remoto] então
            retornar função original (remoto, descompactar (argumentos))
        fim
        retornar originalFunction(remoto, ...)
    fim
fim

local newnamecall = novo fechamento(função(...)
    argumentos locais = {...}
    método localName = getnamecallmethod()
    local remoto = args[1]
    se (methodName:lower() == "invokeserver" ou methodName:lower() == "fireserver") e não (blacklist[remote] ou blacklist[remote.Name]) então
        se remoteHooks[remoto] então
            args = remoteHooks[remoto]({args, descompactar(args, 2)})
        fim
        função local
        chamadas locais
        se funcEnabled então
            função = debug.getinfo(3).func
            chamando = useGetCallingScript e getcallingscript() ou nulo
        fim
        coroutine.wrap(função()
            schedule(remoteHandler, false, methodName, remoto, {descompactar(args, 2)}, função, chamada)
        fim)()
    fim
    se typeof(remoto) == "Instância" e (methodName:lower() == "invokeserver" ou methodName:lower() == "fireserver") e (blocklist[remoto] ou blocklist[remote.Name]) então
        retornar nulo
    elseif (methodName:lower() == "invokeserver" ou methodName:lower() == "fireserver") e remoteHooks[remote] então
        retornar original(descompactar(argumentos))
    outro
        devolver original(...)
    fim
fim)

local newFireServer = newcclosure(função(...) retornar hookRemote("RemoteEvent", ...) fim)

local newInvokeServer = newcclosure(função(...) retornar hookRemote("RemoteFunction", ...) fim)

--- Liga e desliga o espião remoto
função toggleSpy()
    se não alternar então
        setreadonly(gm, falso)
        se não for original então
            original = gm.__namecall
            se não for original então
                warn("SimpleSpy: método namecall não encontrado!\n")
                onToggleButtonClick()
                retornar
            fim
        fim
        gm.__namecall = novonomechamado
        originalEvent = hookfunction(remoteEvent.FireServer, newFireServer)
        Funçãooriginal = funçãodegancho(funçãoremota.InvokeServer, novoServidorInvoke)
    outro
        setreadonly(gm, falso)
        gm.__namecall = original
        função de gancho (evento remoto. FireServer, evento original)
        função de gancho (função remota. InvokeServer, função original)
    fim
fim

--- Alterna entre os dois métodos de espionagem remota (função hook atualmente = desabilitada)
função toggleSpyMethod()
    toggleSpy()
    alternar = não alternar
fim

--- Desliga o espião remoto
função shutdown()
    se schedulerconnect então
        schedulerconnect:Desconectar()
    fim
    para _, conexão em pares(conexões) faça
        coroutine.wrap(função()
            conexão:Desconectar()
        fim)()
    fim
    setreadonly(gm, falso)
    SimpleSpy2:Destruir()
    função de gancho (evento remoto. FireServer, evento original)
    função de gancho (função remota. InvokeServer, função original)
    gm.__namecall = original
    _G.SimpleSpyExecuted = falso
fim

-- principal
se não _G.SimpleSpyExecuted então
    local bem-sucedido, err = pcall(function()
        _G.SimpleSpyShutdown = desligamento
        Provedor de conteúdo: PreloadAsync({"rbxassetid://6065821980", "rbxassetid://6065774948", "rbxassetid://6065821086", "rbxassetid://6065821596", ImageLabel, ImageLabel_2, ImageLabel_3})
        onToggleButtonClick()
        RemoteTemplate.Parent = nulo
        FunctionTemplate.Parent = nulo
        caixa de código = Destaque.novo(Caixa de Código)
        caixa de código:setRaw("")
        getgenv().SimpleSpy = SimpleSpy
        TextLabel:GetPropertyChangedSignal("Texto"):Connect(scaleToolTip)
        TopBar.InputBegan:Conectar(onBarInput)
        MinimizeButton.MouseButton1Click:Connect(toggleMinimize)
        MaximizeButton.MouseButton1Click:Conectar(toggleSideTray)
        Simple.MouseButton1Click:Conectar(onToggleButtonClick)
        BotãoFechar.MouseEnter:Conectar(onXButtonHover)
        CloseButton.MouseLeave:Conectar(onXButtonUnhaver)
        Simple.MouseEnter:Conectar(onToggleButtonHover)
        Simple.MouseLeave:Connect(onToggleButtonUnhaver)
        CloseButton.MouseButton1Click:Connect(desligamento)
        tabela.insert(conexões, UserInputService.InputBegan:Connect(backgroundUserInput))
        tabela.inserir(conexões, Mouse.Mover:Conectar(mouseMovido))
        conectarRedimensionar()
        SimpleSpy2.Enabled = verdadeiro
        coroutine.wrap(função()
            esperar(1)
            onToggleButtonUnhover()
        fim)()
        agendadorconnect = RunService.Heartbeat:Connect(agendador de tarefas)
        se syn e syn.protect_gui então pcall(syn.protect_gui, SimpleSpy2) fim
        SimpleSpy2.Parent = gethui e gethui() ou CoreGui
    fim)
    se for bem-sucedido então
        _G.SimpleSpyExecuted = verdadeiro
    outro
        warn("Ocorreu um erro fatal, o SimpleSpy não conseguiu iniciar corretamente.\nEnvie esta mensagem de erro por DM para @exx#9394:\n\n" .. tostring(err))
        SimpleSpy2:Destruir()
        função de gancho (evento remoto. FireServer, evento original)
        função de gancho (função remota. InvokeServer, função original)
        gm.__namecall = original
        retornar
    fim
outro
    SimpleSpy2:Destruir()
    retornar
fim

----- ADICIONAIS ----- (adicione ou remova facilmente funcionalidades adicionais ao RemoteSpy!)
--[[
    Algumas coisas úteis:
        - adicione sua função aqui e crie botões para ela por meio da função 'newButton'
        - o primeiro argumento fornecido é o TextButton no qual o jogador clica para executar a função
        - os scripts gerados são gerados quando o namecall é disparado inicialmente e salvo em objetos remoteFrame
        - Os controles remotos na lista negra serão ignorados diretamente no namecall (menos lag)
        - as propriedades de um objeto 'remoteFrame':
            {
                Nome: (string) O nome do controle remoto
                GenScript: (string) O script gerado que aparece na caixa de código (gerado quando o namecall é acionado)
                Fonte: (Instância (LocalScript)) O script que disparou/invocou o comando remoto
                Remoto: (Instância (RemoteEvent) | Instância (RemoteFunction)) O controle remoto que foi disparado/invocado
                Log: (Instância (TextButton)) O botão que está sendo usado para o controle remoto (o mesmo que 'selected.Log')
            }
        - lista global: (entre em contato com @exx#9394 para obter mais informações ou se tiver sugestões de mais itens a serem adicionados)
            - fechado: (booleano) se a GUI está minimizada ou não
            - logs: (table[remoteFrame]) cheio de objetos remoteFrame (propriedades listadas acima)
            - selecionado: (remoteFrame) o remoteFrame atualmente selecionado (propriedades listadas acima)
            - lista negra: (string[] | Instance[] (RemoteEvent) | Instance[] (RemoteFunction)) uma matriz de nomes e controles remotos na lista negra
            - codebox: (Instância (TextBox)) a caixa de texto que contém todo o código - limpo frequentemente
]]
-- Copia o conteúdo da caixa de código
novoBotão(
    "Copiar código",
    function() return "Clique para copiar o código" end,
    função()
        definirárea de transferência(caixa de código:obterString())
        TextLabel.Text = "Copiado com sucesso!"
    fim
)

--- Copia o script de origem (que disparou o controle remoto)
novoBotão(
    "Copiar Remoto",
    function() return "Clique para copiar o caminho do controle remoto" end,
    função()
        se selecionado então
            definirárea de transferência (v2s (selecionado. Remoto))
            TextLabel.Text = "Copiado!"
        fim
    fim
)

-- Executa o conteúdo do codebox por meio de loadstring
novoBotão(
    "Executar código",
    function() return "Clique para executar o código" end,
    função()
        local orText = "Clique para executar o código"
        TextLabel.Text = "Executando..."
        local bem-sucedido = pcall(function() return loadstring(codebox:getString())() end)
        se for bem-sucedido então
            TextLabel.Text = "Executado com sucesso!"
        outro
            TextLabel.Text = "Erro de execução!"
        fim
    fim
)

--- Obtém o script de chamada (não muito confiável, mas tudo bem)
novoBotão(
    "Obter Script",
    function() return "Clique para copiar o script de chamada para a área de transferência\nAVISO: Não muito confiável, nulo == não foi possível encontrar" fim,
    função()
        se selecionado então
            setclipboard(SimpleSpy:ValueToString(selecionado.Fonte))
            TextLabel.Text = "Concluído!"
        fim
    fim
)

--- Descompila o script que disparou o controle remoto e o coloca na caixa de código
novoBotão(
    "Informações de função",
    function() return "Clique para visualizar informações da função de chamada" end,
    função()
        se selecionado então
            se selecionado.Função então
                codebox:setRaw("-- Chamando informações da função\n-- Gerado pelo serializador SimpleSpy\n\n" .. tostring(selected.Function))
            fim
            TextLabel.Text = "Concluído! Informações de função geradas pelo Serializador SimpleSpy."
        fim
    fim
)

--- Limpa os logs remotos
novoBotão(
    "Registros Clr",
    function() return "Clique para limpar logs" fim,
    função()
        TextLabel.Text = "Limpando..."
        registros = {}
        para _, v em pares(LogList:GetChildren()) faça
            se não v:IsA("UIListLayout") então
                v:Destruir()
            fim
        fim
        caixa de código:setRaw("")
        selecionado = nulo
        TextLabel.Text = "Logs limpos!"
    fim
)

--- Exclui o .Log Remote selecionado do RemoteSpy
novoBotão(
    "Excluir (i)",
    function() return "Clique para excluir este controle remoto" end,
    função()
        se selecionado então
            lista negra[selecionado.Remoto] = verdadeiro
            TextLabel.Text = "Excluído!"
        fim
    fim
)

--- Exclui todos os controles remotos que compartilham o mesmo nome do controle remoto selecionado.Log do RemoteSpy
novoBotão(
    "Excluir (n)",
    function() return "Clique para excluir todos os controles remotos com este nome" end,
    função()
        se selecionado então
            lista negra[nome selecionado] = verdadeiro
            TextLabel.Text = "Excluído!"
        fim
    fim
)

--- limpa a lista negra
novoBotão(
    "Lista Negra Clr",
    function() return "Clique para limpar a lista negra" end,
    função()
        lista negra = {}
        TextLabel.Text = "Lista negra limpa!"
    fim
)

--- Impede que o .Log Remote selecionado acione o servidor (ainda conectado)
novoBotão(
    "Bloco (i)",
    function() return "Clique para impedir que este controle remoto dispare" end,
    função()
        se selecionado então
            blocklist[selected.Remote] = verdadeiro
            TextLabel.Text = "Excluído!"
        fim
    fim
)

--- Impede que todos os controles remotos que compartilham o mesmo nome do controle remoto selecionado sejam disparados. Logar o controle remoto do RemoteSpy (ainda logado)
novoBotão(
    "Bloco (n)",
    function() return "Clique para impedir que controles remotos com este nome disparem" end,
    função()
        se selecionado então
            blocklist[selected.Name] = verdadeiro
            TextLabel.Text = "Excluído!"
        fim
    fim
)

--- limpa a lista negra
novoBotão(
    "Lista de bloqueios Clr",
    function() return "Clique para parar de bloquear controles remotos" end,
    função()
        lista de bloqueios = {}
        TextLabel.Text = "Lista de bloqueios limpa!"
    fim
)

--- Tenta descompilar o script de origem
novoBotão(
    "Descompilar",
    function() return "Tentativas de descompilar o script de origem\nAVISO: Não é muito confiável, nulo == não foi possível encontrar" fim,
    função()
        se selecionado então
            se selecionado.Fonte então
                co debox:setRaw(descompilar(selecionado.Fonte))
                TextLabel.Text = "Concluído!"
            outro
                TextLabel.Text = "Fonte não encontrada!"
            fim
        fim
    fim
)

novoBotão(
    "Desativar informações",
    function() return string.format("[%s] Alterna informações da função (porque pode causar atraso em alguns jogos)", funcEnabled e "ENABLED" ou "DISABLED") end,
    função()
        funcEnabled = não funcEnabled
        TextLabel.Text = string.format("[%s] Alternar informações da função (porque pode causar atraso em alguns jogos)", funcEnabled e "ENABLED" ou "DISABLED")
    fim
)

novoBotão(
    "Bloqueio automático",
    function() return string.format("[%s] [BETA] Detecta e exclui de forma inteligente chamadas remotas de spam dos logs", autoblock e "ENABLED" ou "DISABLED") end,
    função()
        autoblock = não autoblock
        TextLabel.Text = string.format("[%s] [BETA] Detecta e exclui de forma inteligente chamadas remotas de spam dos registros", bloqueio automático e "ATIVADO" ou "DESATIVADO")
        história = {}
        excluindo = {}
    fim
)

novoBotão(
    "Script de Chamada",
    function() return string.format("[%s] [INSEGURO] Usa 'getcallingscript' para obter o script de chamada para Decompile e GetScript. Muito mais confiável, mas expõe o SimpleSpy à detecção e/ou instabilidade.", useGetCallingScript e "ENABLED" ou "DISABLED") fim,
    função()
        useGetCallingScript = não useGetCallingScript
        TextLabel.Text = string.format("[%s] [INSEGURO] Usa 'getcallingscript' para obter o script de chamada para Decompile e GetScript. Muito mais confiável, mas expõe o SimpleSpy à detecção e/ou instabilidade.", useGetCallingScript e "ENABLED" ou "DISABLED")
    fim
)
