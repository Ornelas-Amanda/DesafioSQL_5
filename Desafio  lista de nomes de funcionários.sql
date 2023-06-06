DECLARE @nome VARCHAR(50)
DECLARE funcionario_cursor CURSOR FOR
    SELECT nome
    FROM funcionarios

OPEN funcionario_cursor

FETCH NEXT FROM funcionario_cursor INTO @nome

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Nome: ' + @nome
    FETCH NEXT FROM funcionario_cursor INTO @nome
END

CLOSE funcionario_cursor
DEALLOCATE funcionario_cursor
