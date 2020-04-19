

static void doNothingStatic() {}

void doNothing() {}

void doAlmostNothing()
{
    doNothingStatic();
    doNothing();
}

