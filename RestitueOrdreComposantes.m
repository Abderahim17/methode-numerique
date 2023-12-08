function X = RestitueOrdreComposantes(X, OrdreX)
%Cette fonction restitue l'ordre des composantes du vecteur X selon l'odre
%donn� dans le vecteur OrdreX dans lequel sont sauvegard�es les
%permutations de colonnes effectu�es par la fonction MPG.
XX=X;
for i=1:length(X)
    X(OrdreX(i))=XX(i);
end
end

