async function getQuery(endpoint) {
    try {
        const response = await fetch(`/api/${endpoint}`);
        const data = await response.json();
        displayResult(data, endpoint);
    } catch (error) {
        console.error('Erro ao buscar dados:', error);
        document.getElementById('result').innerHTML = 'Erro ao buscar dados. Por favor, tente novamente.';
    }
}

function displayResult(data, endpoint) {
    const resultDiv = document.getElementById('result');
    let html = `<h2>${getTitle(endpoint)}</h2>`;
    
    // Criação da tabela
    html += '<table border="1" cellspacing="0" cellpadding="10" style="width: 100%; border-collapse: collapse;">';
    html += '<thead><tr>';

    // Cabeçalhos da tabela (baseados no primeiro item de dados)
    const headers = Object.keys(data[0]);
    headers.forEach(header => {
        html += `<th>${header.charAt(0).toUpperCase() + header.slice(1)}</th>`;
    });

    html += '</tr></thead><tbody>';

    // Linhas de dados
    data.forEach(item => {
        html += '<tr>';
        for (const value of Object.values(item)) {
            html += `<td>${value}</td>`;
        }
        html += '</tr>';
    });

    html += '</tbody></table>';
    resultDiv.innerHTML = html;
}

function getTitle(endpoint) {
    switch(endpoint) {
        case 'livros-populares': return 'Livros Mais Populares';
        case 'usuarios-ativos': return 'Usuários Mais Ativos';
        case 'multas-pendentes': return 'Multas Pendentes';
        case 'livros-avaliados': return 'Livros Mais Avaliados';
        case 'categorias-populares': return 'Categorias Mais Populares';
        default: return 'Resultados da Consulta';
    }
}