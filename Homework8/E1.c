int test(int i, int j)
{
    int score;
    if (i > j && j != 0 && j > 10 && i != 0 && i > 20 || i > 100 || (j >= 100 && i <= 40) && (j <= 20 || i >= -10))
        score = 100;
    else
        score = 60;
    return score;
}