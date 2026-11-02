const typeFilter = document.getElementById('typeFilter');
const domainFilter = document.getElementById('domainFilter');
const resultCount = document.getElementById('resultCount');
const cards = Array.from(document.querySelectorAll('.algorithm-card'));
function updateCards() {
  const type = typeFilter.value;
  const domain = domainFilter.value;
  let count = 0;
  cards.forEach(card => {
    const showType = type === 'all' || card.dataset.type === type;
    const showDomain = domain === 'all' || card.dataset.domains.split(' ').includes(domain);
    card.hidden = !(showType && showDomain);
    if (!card.hidden) count += 1;
  });
  resultCount.textContent = `Showing ${count} of ${cards.length} algorithms`;
}
typeFilter.addEventListener('change', updateCards);
domainFilter.addEventListener('change', updateCards);
