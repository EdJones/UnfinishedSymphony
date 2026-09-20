# An Unfinished Symphony
### Completing the Playbook for Reading Education

A research-to-practice brief arguing that America's reading crisis is now a **professionalization problem** — not a knowledge one. The Science of Reading has won the argument. What's missing is the infrastructure to make good practice consistent at scale.

## The argument in brief

After decades of reform, roughly 40% of U.S. fourth-graders still read below NAEP Basic. The emerging consensus among researchers (Seidenberg, Carnine, Lyon, Tipton & Patton-Terry) is that the bottleneck has shifted: the research base is strong enough, but it has no reliable path from expert knowledge to the median classroom.

The brief surveys what *has* come online — Reading Universe, state coaching networks, NCTQ audits, TRL curriculum reviews, EdReports 2.0 — and identifies what's still missing: an **integrating framework** that ties those pieces together and keeps them current.

It evaluates four approaches:

| Approach | Assessment |
|---|---|
| NRP 2.0 | Better options exist; experts already monitor and synthesize the literature |
| Engineering of Reading | Right mindset, but engineering documents aren't teacher-facing work products |
| Field Manual System | High potential — grade-by-grade scope & sequence, decision rules, designed *to be taught* |
| Community-Maintained Canonical Source | The open-source model applied to reading education — named maintainers, version control, issue tracking, public review |

The core claim: **publishing makes improvement episodic; maintenance makes it cumulative.** The thousands of corrections teachers already make in private should become one shared, reviewed, attributed asset.

## File

| File | Description |
|---|---|
| `Unfinished_Symphony.typ` | Main Typst source for the brief |
| `canonical-source-roles.png` | Diagram embedded on the infrastructure page |

## Compiling

Requires [Typst](https://typst.app) and the **Inter** and **Inter Display** font families.

```sh
typst compile Unfinished_Symphony.typ
```

Output is a US-letter PDF. Both source files (`Unfinished_Symphony.typ` and `canonical-source-roles.png`) must be in the same directory.

## References

The brief cites 31 sources (2023–2026), including work by Mark Seidenberg, Douglas Carnine, G. Reid Lyon, Elizabeth Tipton & Nicole Patton-Terry, the Reading League, NCTQ, EdReports, AERDF, and others. Full citations appear in the document itself.
