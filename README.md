# money-minded

A Claude Code skill that forces commercial rigor on every idea, feature, and opportunity. Defeats the sycophancy problem — LLMs agree with 58% of ideas regardless of quality. This skill asks "who pays and why" before anything gets built.

## Install

```bash
/plugin marketplace add money-minded
```

Or manually:

```bash
./install.sh
```

## The Problem

You pitch an idea to Claude. Claude says "that's a great idea, here's how to build it." You ask about the market. Claude generates an optimistic analysis. You ask about competition. Claude lists competitors but concludes you can differentiate.

You never hear "this probably won't make money."

Research (Anthropic, 2024; SycEval, 2025) shows LLMs validate ideas at a 58% rate with 78.5% persistence — once they start agreeing, they keep agreeing. This skill replaces that default with pressure-testing.

## What It Does

Every idea gets interrogated through 7 lenses before getting a verdict:

1. **Who pays and why** — Not "businesses" — a specific person with a job title, a budget, and a pain point
2. **Bottom-up math** — Count actual buyers, multiply by price. No "the market is $10B and we need 0.1%"
3. **Pre-mortem** — "It's 18 months from now and this has failed. Write the post-mortem." (Increases risk identification by 30% — Klein, HBR 2007)
4. **Steel-man the competition** — The real competitor is usually a spreadsheet or doing nothing, not another startup
5. **Distribution reality** — How does customer #1 find this? Customer #100? Customer #1,000?
6. **Effectuation check** — What do you actually have? What can you afford to lose? What's the smallest test?
7. **Verdict** — BUILD / DON'T BUILD / TEST FIRST / PIVOT — with reasoning, not hedging

## Commands

| Command | What it does |
|---------|-------------|
| `/money-minded` | Full commercial evaluation of an idea or opportunity |
| `/money-minded scan` | Scan current project for monetization gaps and revenue opportunities |
| `/money-minded rip` | Pure adversarial: every reason this will fail commercially |
| `/money-minded unit-economics` | Just the numbers: TAM, pricing, CAC, LTV, margins, payback |

## The Anti-Sycophancy Mechanisms

This skill encodes techniques from research that actually work:

- **Pre-mortem prompting** (Klein, 2007) — Imagining failure has already occurred increases risk identification by 30% vs. forward-looking analysis
- **Effectuation theory** (Sarasvathy, UVA Darden) — 65% of successful entrepreneurs reason from "what do I have" not "what's the optimal strategy"
- **Steel-manning** (debate research, COLING 2025) — Structured adversarial debate produces more truthful outcomes than single-perspective reasoning
- **Bottom-up sizing** — Counting real buyers defeats the "we just need X% of a huge market" fallacy
- **The Mom Test** (Fitzpatrick) — "Have you tried to solve this?" not "Would you use this?"

## Example

```
You: I want to build an AI-powered meeting notes tool.

Money-Minded:
  Before I evaluate this, three questions:

  1. Who specifically needs this? Job title, company size, how many
     meetings per day?
  2. What do they use today? (Otter.ai? Manual notes? Nothing?)
  3. If Otter costs $16/month and does 80% of what you're proposing,
     why would someone switch?

You: Engineering managers at mid-size companies. They use Otter but
     it doesn't integrate with Jira.

Money-Minded:
  Bottom-up math:
    Engineering managers at 500-5000 person companies: ~40,000 in US
    × Realistic reach (SEO + integrations): 5%
    × Conversion rate: 3%
    = 60 paying customers
    × $25/month (Otter premium + Jira value)
    = $1,500/month

  Pre-mortem:
    "The Jira integration was the wedge, but Otter shipped their own
    Jira integration in Q2. 70% of customers churned within 3 months
    because the only differentiator evaporated."

  Verdict: TEST FIRST
    The Jira gap is real but fragile. Before building, check:
    is Otter's Jira integration actually bad? If yes, you have a
    window. If it's just missing, they'll ship it before you scale.

    Next step: Talk to 10 engineering managers who use Otter. Ask
    if they've complained about the Jira gap. Don't pitch your
    product.
```

## Grounded In Research

| Source | Finding | How the skill uses it |
|--------|---------|----------------------|
| SycEval (AAAI 2025) | 58% sycophancy rate, 78.5% persistence | Anti-validation rules: never lead with "great idea" |
| Anthropic (ICLR 2024) | RLHF creates systematic agreement bias | Forces questions before opinions |
| Klein (HBR 2007) | Pre-mortem increases risk identification 30% | Mandatory failure scenario generation |
| Sarasvathy (UVA Darden) | 65% of successful founders use effectuation | "What do you have?" framing |
| Wharton (SSRN) | AI ideas viable but clustered, lack novelty | Forces differentiation analysis |
| Harvard (Kenya study) | Same AI, divergent outcomes based on human filter | Verdict requires human judgment call |
| Fitzpatrick (Mom Test) | Past behavior predicts better than stated intent | "What do they do today?" over "Would they use this?" |

## License

MIT
