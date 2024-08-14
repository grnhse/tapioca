# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `shopify-money` gem.
# Please instead update this file by running `bin/tapioca gem shopify-money`.


# source://shopify-money//lib/money/deprecations.rb#3
ACTIVE_SUPPORT_DEFINED = T.let(T.unsafe(nil), String)

# source://shopify-money//lib/money/version.rb#2
class Money
  include ::Comparable
  extend ::Forwardable

  # @raise [ArgumentError]
  # @return [Money] a new instance of Money
  #
  # source://shopify-money//lib/money/money.rb#130
  def initialize(value, currency); end

  # @raise [ArgumentError]
  #
  # source://shopify-money//lib/money/money.rb#187
  def *(numeric); end

  # source://shopify-money//lib/money/money.rb#173
  def +(other); end

  # source://shopify-money//lib/money/money.rb#180
  def -(other); end

  # source://shopify-money//lib/money/money.rb#162
  def -@; end

  # source://shopify-money//lib/money/money.rb#194
  def /(numeric); end

  # source://shopify-money//lib/money/money.rb#166
  def <=>(other); end

  # source://shopify-money//lib/money/money.rb#202
  def ==(other); end

  # source://shopify-money//lib/money/money.rb#278
  def abs; end

  # @see Money::Allocator#allocate
  #
  # source://shopify-money//lib/money/money.rb#304
  def allocate(splits, strategy = T.unsafe(nil)); end

  # @see Money::Allocator#allocate_max_amounts
  #
  # source://shopify-money//lib/money/money.rb#309
  def allocate_max_amounts(maximums); end

  # source://shopify-money//lib/money/money.rb#270
  def as_json(options = T.unsafe(nil)); end

  # Calculate the splits evenly without losing pennies.
  # Returns the number of high and low splits and the value of the high and low splits.
  # Where high represents the Money value with the extra penny
  # and low a Money without the extra penny.
  #
  # @example
  #   Money.new(100, "USD").calculate_splits(3) #=> {Money.new(34) => 1, Money.new(33) => 2}
  # @param number [2] of parties.
  # @return [Hash<Money, Integer>]
  #
  # source://shopify-money//lib/money/money.rb#336
  def calculate_splits(num); end

  # Clamps the value to be within the specified minimum and maximum. Returns
  # self if the value is within bounds, otherwise a new Money object with the
  # closest min or max value.
  #
  # @example
  #   Money.new(50, "CAD").clamp(1, 100) #=> Money.new(50, "CAD")
  #
  #   Money.new(120, "CAD").clamp(0, 100) #=> Money.new(100, "CAD")
  # @raise [ArgumentError]
  #
  # source://shopify-money//lib/money/money.rb#348
  def clamp(min, max); end

  # @raise [TypeError]
  #
  # source://shopify-money//lib/money/money.rb#213
  def coerce(other); end

  # Returns the value of attribute currency.
  #
  # source://shopify-money//lib/money/money.rb#10
  def currency; end

  # source://shopify-money//lib/money/money.rb#141
  def encode_with(coder); end

  # TODO: Remove once cross-currency mathematical operations are no longer allowed
  #
  # @return [Boolean]
  #
  # source://shopify-money//lib/money/money.rb#207
  def eql?(other); end

  # source://shopify-money//lib/money/money.rb#284
  def floor; end

  # @raise [ArgumentError]
  #
  # source://shopify-money//lib/money/money.rb#296
  def fraction(rate); end

  # source://shopify-money//lib/money/money.rb#11
  def hash(*args, **_arg1, &block); end

  # source://shopify-money//lib/money/money.rb#137
  def init_with(coder); end

  # source://shopify-money//lib/money/money.rb#198
  def inspect; end

  # source://shopify-money//lib/money/money.rb#11
  def negative?(*args, **_arg1, &block); end

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/money.rb#158
  def no_currency?; end

  # source://shopify-money//lib/money/money.rb#11
  def nonzero?(*args, **_arg1, &block); end

  # source://shopify-money//lib/money/money.rb#11
  def positive?(*args, **_arg1, &block); end

  # source://shopify-money//lib/money/money.rb#290
  def round(ndigits = T.unsafe(nil)); end

  # Split money amongst parties evenly without losing pennies.
  #
  # @example
  #   Money.new(100, "USD").split(3) #=> Enumerable[Money.new(34), Money.new(33), Money.new(33)]
  # @param number [2] of parties.
  # @return [Enumerable<Money, Money, Money>]
  #
  # source://shopify-money//lib/money/money.rb#321
  def split(num); end

  # source://shopify-money//lib/money/money.rb#146
  def subunits(format: T.unsafe(nil)); end

  # source://shopify-money//lib/money/money.rb#233
  def to_d; end

  # source://shopify-money//lib/money/money.rb#11
  def to_f(*args, **_arg1, &block); end

  # source://shopify-money//lib/money/money.rb#260
  def to_formatted_s(style = T.unsafe(nil)); end

  # source://shopify-money//lib/money/money.rb#237
  def to_fs(style = T.unsafe(nil)); end

  # source://shopify-money//lib/money/money.rb#11
  def to_i(*args, **_arg1, &block); end

  # source://shopify-money//lib/money/money.rb#262
  def to_json(options = T.unsafe(nil)); end

  # source://shopify-money//lib/money/money.rb#218
  def to_money(new_currency = T.unsafe(nil)); end

  # source://shopify-money//lib/money/money.rb#259
  def to_s(style = T.unsafe(nil)); end

  # Returns the value of attribute value.
  #
  # source://shopify-money//lib/money/money.rb#10
  def value; end

  # source://shopify-money//lib/money/money.rb#11
  def zero?(*args, **_arg1, &block); end

  private

  # source://shopify-money//lib/money/money.rb#363
  def arithmetic(other); end

  # source://shopify-money//lib/money/money.rb#393
  def calculated_currency(other); end

  # source://shopify-money//lib/money/money.rb#383
  def ensure_compatible_currency(other_currency, msg); end

  class << self
    # source://shopify-money//lib/money/deprecations.rb#5
    def active_support_deprecator; end

    # Returns the value of attribute config.
    #
    # source://shopify-money//lib/money/money.rb#39
    def config; end

    # Sets the attribute config
    #
    # @param value the value to set the attribute config to.
    #
    # source://shopify-money//lib/money/money.rb#39
    def config=(_arg0); end

    # @yield [config]
    #
    # source://shopify-money//lib/money/money.rb#42
    def configure; end

    # source://shopify-money//lib/money/money.rb#84
    def current_currency; end

    # source://shopify-money//lib/money/money.rb#88
    def current_currency=(currency); end

    # source://shopify-money//lib/money/money.rb#40
    def default_currency(*args, **_arg1, &block); end

    # source://shopify-money//lib/money/money.rb#40
    def default_currency=(*args, **_arg1, &block); end

    # source://shopify-money//lib/money/deprecations.rb#12
    def deprecate(message); end

    # source://shopify-money//lib/money/money.rb#60
    def from_amount(value = T.unsafe(nil), currency = T.unsafe(nil)); end

    # source://shopify-money//lib/money/money.rb#62
    def from_subunits(subunits, currency_iso, format: T.unsafe(nil)); end

    # source://shopify-money//lib/money/money.rb#47
    def new(value = T.unsafe(nil), currency = T.unsafe(nil)); end

    # source://shopify-money//lib/money/money.rb#77
    def rational(money1, money2); end

    # Set Money.default_currency inside the supplied block, resets it to
    # the previous value when done to prevent leaking state. Similar to
    # I18n.with_locale and ActiveSupport's Time.use_zone. This won't affect
    # instances being created with explicitly set currency.
    #
    # source://shopify-money//lib/money/money.rb#96
    def with_currency(new_currency); end

    private

    # source://shopify-money//lib/money/money.rb#108
    def new_from_money(amount, currency); end
  end
end

# source://shopify-money//lib/money/allocator.rb#5
class Money::Allocator < ::SimpleDelegator
  # @return [Allocator] a new instance of Allocator
  #
  # source://shopify-money//lib/money/allocator.rb#6
  def initialize(money); end

  # source://shopify-money//lib/money/allocator.rb#58
  def allocate(splits, strategy = T.unsafe(nil)); end

  # Allocates money between different parties up to the maximum amounts specified.
  # Left over subunits will be assigned round-robin up to the maximum specified.
  # Subunits are dropped when the maximums are attained.
  #
  # @example
  #   Money.new(30.75).allocate_max_amounts([Money.new(26), Money.new(4.75)])
  #   #=> [Money.new(26), Money.new(4.75)]
  #
  #   Money.new(30.75).allocate_max_amounts([Money.new(26), Money.new(4.74)]
  #   #=> [Money.new(26), Money.new(4.74)]
  #
  #   Money.new(30).allocate_max_amounts([Money.new(15), Money.new(15)]
  #   #=> [Money.new(15), Money.new(15)]
  #
  #   Money.new(1).allocate_max_amounts([Money.new(33), Money.new(33), Money.new(33)])
  #   #=> [Money.new(0.34), Money.new(0.33), Money.new(0.33)]
  #
  #   Money.new(100).allocate_max_amounts([Money.new(5), Money.new(2)])
  #   #=> [Money.new(5), Money.new(2)]
  #
  # source://shopify-money//lib/money/allocator.rb#109
  def allocate_max_amounts(maximums); end

  private

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/allocator.rb#165
  def all_rational?(splits); end

  # @raise [ArgumentError]
  #
  # source://shopify-money//lib/money/allocator.rb#147
  def amounts_from_splits(allocations, splits, subunits_to_split = T.unsafe(nil)); end

  # source://shopify-money//lib/money/allocator.rb#139
  def extract_currency(money_array); end

  # Given a list of decimal numbers, return a list ordered by which is nearest to the next whole number.
  # For instance, given inputs [1.1, 1.5, 1.9] the correct ranking is 2, 1, 0. This is because 1.9 is nearly 2.
  # Note that we are not ranking by absolute size, we only care about the distance between our input number and
  # the next whole number. Similarly, given the input [9.1, 5.5, 3.9] the correct ranking is *still* 2, 1, 0. This
  # is because 3.9 is nearer to 4 than 9.1 is to 10.
  #
  # source://shopify-money//lib/money/allocator.rb#174
  def rank_by_nearest(amounts); end
end

# source://shopify-money//lib/money/allocator.rb#10
Money::Allocator::ONE = T.let(T.unsafe(nil), BigDecimal)

# source://shopify-money//lib/money/config.rb#4
class Money::Config
  # @return [Config] a new instance of Config
  #
  # source://shopify-money//lib/money/config.rb#19
  def initialize; end

  # Returns the value of attribute default_currency.
  #
  # source://shopify-money//lib/money/config.rb#5
  def default_currency; end

  # Sets the attribute default_currency
  #
  # @param value the value to set the attribute default_currency to.
  #
  # source://shopify-money//lib/money/config.rb#5
  def default_currency=(_arg0); end

  # source://shopify-money//lib/money/config.rb#7
  def legacy_default_currency!; end

  # Returns the value of attribute legacy_deprecations.
  #
  # source://shopify-money//lib/money/config.rb#5
  def legacy_deprecations; end

  # source://shopify-money//lib/money/config.rb#11
  def legacy_deprecations!; end

  # Sets the attribute legacy_deprecations
  #
  # @param value the value to set the attribute legacy_deprecations to.
  #
  # source://shopify-money//lib/money/config.rb#5
  def legacy_deprecations=(_arg0); end

  # Returns the value of attribute legacy_json_format.
  #
  # source://shopify-money//lib/money/config.rb#5
  def legacy_json_format; end

  # source://shopify-money//lib/money/config.rb#15
  def legacy_json_format!; end

  # Sets the attribute legacy_json_format
  #
  # @param value the value to set the attribute legacy_json_format to.
  #
  # source://shopify-money//lib/money/config.rb#5
  def legacy_json_format=(_arg0); end
end

# source://shopify-money//lib/money/currency/loader.rb#5
class Money::Currency
  # @raise [UnknownCurrency]
  # @return [Currency] a new instance of Currency
  #
  # source://shopify-money//lib/money/currency.rb#33
  def initialize(currency_iso); end

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/currency.rb#61
  def ==(other); end

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/currency.rb#57
  def compatible?(other); end

  # Returns the value of attribute decimal_mark.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def decimal_mark; end

  # Returns the value of attribute disambiguate_symbol.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def disambiguate_symbol; end

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/currency.rb#49
  def eql?(other); end

  # source://shopify-money//lib/money/currency.rb#53
  def hash; end

  # Returns the value of attribute iso_code.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def iso_code; end

  # Returns the value of attribute iso_numeric.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def iso_numeric; end

  # Returns the value of attribute minor_units.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def minor_units; end

  # Returns the value of attribute name.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def name; end

  # Returns the value of attribute smallest_denomination.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def smallest_denomination; end

  # Returns the value of attribute subunit_symbol.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def subunit_symbol; end

  # Returns the value of attribute subunit_to_unit.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def subunit_to_unit; end

  # Returns the value of attribute symbol.
  #
  # source://shopify-money//lib/money/currency.rb#30
  def symbol; end

  # Returns the value of attribute iso_code.
  #
  # source://shopify-money//lib/money/currency.rb#62
  def to_s; end

  class << self
    # source://shopify-money//lib/money/currency.rb#25
    def currencies; end

    # source://shopify-money//lib/money/currency.rb#19
    def find(currency_iso); end

    # @raise [UnknownCurrency]
    #
    # source://shopify-money//lib/money/currency.rb#17
    def find!(currency_iso); end

    # @raise [UnknownCurrency]
    #
    # source://shopify-money//lib/money/currency.rb#12
    def new(currency_iso); end
  end
end

# source://shopify-money//lib/money/currency/loader.rb#6
module Money::Currency::Loader
  class << self
    # source://shopify-money//lib/money/currency/loader.rb#8
    def load_currencies; end

    private

    # source://shopify-money//lib/money/currency/loader.rb#20
    def deep_deduplicate!(data); end
  end
end

# source://shopify-money//lib/money/currency.rb#9
class Money::Currency::UnknownCurrency < ::ArgumentError; end

# source://shopify-money//lib/money/errors.rb#3
class Money::Error < ::StandardError; end

# source://shopify-money//lib/money/helpers.rb#5
module Money::Helpers
  private

  # source://shopify-money//lib/money/helpers.rb#44
  def value_to_currency(currency); end

  # source://shopify-money//lib/money/helpers.rb#16
  def value_to_decimal(num); end

  class << self
    # source://shopify-money//lib/money/helpers.rb#44
    def value_to_currency(currency); end

    # source://shopify-money//lib/money/helpers.rb#16
    def value_to_decimal(num); end
  end
end

# source://shopify-money//lib/money/helpers.rb#8
Money::Helpers::DECIMAL_ZERO = T.let(T.unsafe(nil), BigDecimal)

# source://shopify-money//lib/money/helpers.rb#9
Money::Helpers::MAX_DECIMAL = T.let(T.unsafe(nil), Integer)

# source://shopify-money//lib/money/helpers.rb#11
Money::Helpers::STRIPE_SUBUNIT_OVERRIDE = T.let(T.unsafe(nil), Hash)

# source://shopify-money//lib/money/errors.rb#6
class Money::IncompatibleCurrencyError < ::Money::Error; end

# source://shopify-money//lib/money/money.rb#8
Money::NULL_CURRENCY = T.let(T.unsafe(nil), Money::NullCurrency)

# A placeholder currency for instances where no actual currency is available,
# as defined by ISO4217. You should rarely, if ever, need to use this
# directly. It's here mostly for backwards compatibility and for that reason
# behaves like a dollar, which is how this gem worked before the introduction
# of currency.
#
# Here follows a list of preferred alternatives over using Money with
# NullCurrency:
#
# For comparisons where you don't know the currency beforehand, you can use
# Numeric predicate methods like #positive?/#negative?/#zero?/#nonzero?.
# Comparison operators with Numeric (==, !=, <=, =>, <, >) work as well.
#
# Money with NullCurrency has behaviour that may surprise you, such as
# database validations or GraphQL enum not allowing the string representation
# of NullCurrency. Prefer using Money.new(0, currency) where possible, as
# this sidesteps these issues and provides additional currency check
# safeties.
#
# Unlike other currencies, it is allowed to calculate a Money object with
# NullCurrency with another currency. The resulting Money object will have
# the other currency.
#
# @example
#   Money.new(1, 'CAD').positive? #=> true
#   Money.new(2, 'CAD') >= 0      #=> true
# @example
#   Money.new(0, Money::NULL_CURRENCY) + Money.new(5, 'CAD')
#   #=> #<Money value:5.00 currency:CAD>
#
# source://shopify-money//lib/money/null_currency.rb#34
class Money::NullCurrency
  # @return [NullCurrency] a new instance of NullCurrency
  #
  # source://shopify-money//lib/money/null_currency.rb#39
  def initialize; end

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/null_currency.rb#65
  def ==(other); end

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/null_currency.rb#53
  def compatible?(other); end

  # Returns the value of attribute decimal_mark.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def decimal_mark; end

  # Returns the value of attribute disambiguate_symbol.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def disambiguate_symbol; end

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/null_currency.rb#57
  def eql?(other); end

  # Returns the value of attribute iso_code.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def iso_code; end

  # Returns the value of attribute iso_numeric.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def iso_numeric; end

  # Returns the value of attribute minor_units.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def minor_units; end

  # Returns the value of attribute name.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def name; end

  # Returns the value of attribute smallest_denomination.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def smallest_denomination; end

  # Returns the value of attribute subunit_symbol.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def subunit_symbol; end

  # Returns the value of attribute subunit_to_unit.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def subunit_to_unit; end

  # Returns the value of attribute symbol.
  #
  # source://shopify-money//lib/money/null_currency.rb#36
  def symbol; end

  # source://shopify-money//lib/money/null_currency.rb#61
  def to_s; end
end

# source://shopify-money//lib/money/parser/fuzzy.rb#3
module Money::Parser; end

# source://shopify-money//lib/money/parser/accounting.rb#4
class Money::Parser::Accounting < ::Money::Parser::Fuzzy
  # source://shopify-money//lib/money/parser/accounting.rb#5
  def parse(input, currency = T.unsafe(nil), **options); end
end

# source://shopify-money//lib/money/parser/fuzzy.rb#4
class Money::Parser::Fuzzy
  # Parses an input string and attempts to find the decimal separator based on certain heuristics, like the amount
  # decimals for the fractional part a currency has or the incorrect notion a currency has a defined decimal
  # separator (this is a property of the locale). While these heuristics can lead to the expected result for some
  # cases, the other cases can lead to surprising results such as parsed amounts being 1000x larger than intended.
  #
  # @deprecated Use {LocaleAware.parse} or {Simple.parse} instead.
  # @param input [String]
  # @param currency [String, Money::Currency, nil]
  # @param strict [Boolean]
  # @raise [MoneyFormatError]
  # @return [Money]
  #
  # source://shopify-money//lib/money/parser/fuzzy.rb#74
  def parse(input, currency = T.unsafe(nil), strict: T.unsafe(nil)); end

  private

  # source://shopify-money//lib/money/parser/fuzzy.rb#82
  def extract_amount_from_string(input, currency, strict); end

  # @return [Boolean]
  #
  # source://shopify-money//lib/money/parser/fuzzy.rb#143
  def last_digits_decimals?(digits, marks, currency); end

  # source://shopify-money//lib/money/parser/fuzzy.rb#132
  def normalize_number(number, marks, currency); end

  class << self
    # source://shopify-money//lib/money/parser/fuzzy.rb#60
    def parse(input, currency = T.unsafe(nil), **options); end
  end
end

# 1,1123,4567.89
#
# source://shopify-money//lib/money/parser/fuzzy.rb#51
Money::Parser::Fuzzy::CHINESE_NUMERIC_REGEX = T.let(T.unsafe(nil), Regexp)

# 1.234.567,89
#
# source://shopify-money//lib/money/parser/fuzzy.rb#30
Money::Parser::Fuzzy::COMMA_DECIMAL_REGEX = T.let(T.unsafe(nil), Regexp)

# 1,234,567.89
#
# source://shopify-money//lib/money/parser/fuzzy.rb#20
Money::Parser::Fuzzy::DOT_DECIMAL_REGEX = T.let(T.unsafe(nil), Regexp)

# source://shopify-money//lib/money/parser/fuzzy.rb#9
Money::Parser::Fuzzy::ESCAPED_MARKS = T.let(T.unsafe(nil), String)

# source://shopify-money//lib/money/parser/fuzzy.rb#12
Money::Parser::Fuzzy::ESCAPED_NON_COMMA_MARKS = T.let(T.unsafe(nil), String)

# source://shopify-money//lib/money/parser/fuzzy.rb#11
Money::Parser::Fuzzy::ESCAPED_NON_DOT_MARKS = T.let(T.unsafe(nil), String)

# source://shopify-money//lib/money/parser/fuzzy.rb#10
Money::Parser::Fuzzy::ESCAPED_NON_SPACE_MARKS = T.let(T.unsafe(nil), String)

# 12,34,567.89
#
# source://shopify-money//lib/money/parser/fuzzy.rb#40
Money::Parser::Fuzzy::INDIAN_NUMERIC_REGEX = T.let(T.unsafe(nil), Regexp)

# source://shopify-money//lib/money/parser/fuzzy.rb#7
Money::Parser::Fuzzy::MARKS = T.let(T.unsafe(nil), Array)

# source://shopify-money//lib/money/parser/fuzzy.rb#5
class Money::Parser::Fuzzy::MoneyFormatError < ::ArgumentError; end

# source://shopify-money//lib/money/parser/fuzzy.rb#14
Money::Parser::Fuzzy::NUMERIC_REGEX = T.let(T.unsafe(nil), Regexp)

# source://shopify-money//lib/money/parser/locale_aware.rb#4
class Money::Parser::LocaleAware
  class << self
    # The +Proc+ called to get the current locale decimal separator. In Rails apps this defaults to the same lookup
    # ActionView's +number_to_currency+ helper will use to format the monetary amount for display.
    #
    # source://shopify-money//lib/money/parser/locale_aware.rb#10
    def decimal_separator_resolver; end

    # Set the default +Proc+ to determine the current locale decimal separator.
    #
    # @example
    #   Money::Parser::LocaleAware.decimal_separator_resolver =
    #   ->() { MyFormattingLibrary.current_locale.decimal.separator }
    #
    # source://shopify-money//lib/money/parser/locale_aware.rb#19
    def decimal_separator_resolver=(proc); end

    # Parses an input string, normalizing some non-ASCII characters to their equivalent ASCII, then discarding any
    # character that is not a digit, hyphen-minus or the decimal separator. To prevent user confusion, make sure
    # that formatted Money strings can be parsed back into equivalent Money objects.
    #
    # @param input [String]
    # @param currency [String, Money::Currency]
    # @param strict [Boolean]
    # @param decimal_separator [String]
    # @raise [ArgumentError]
    # @return [Money, nil]
    #
    # source://shopify-money//lib/money/parser/locale_aware.rb#32
    def parse(input, currency, strict: T.unsafe(nil), decimal_separator: T.unsafe(nil)); end
  end
end

# source://shopify-money//lib/money/parser/simple.rb#4
class Money::Parser::Simple
  class << self
    # Parses an input string using BigDecimal, it always expects a dot character as a decimal separator and
    # generally does not accept other characters other than minus-hyphen and digits. It is useful for APIs, interop
    # with other languages and other use cases where you expect well-formatted input and do not need to take user
    # locale into consideration.
    #
    # @param input [String]
    # @param currency [String, Money::Currency]
    # @param strict [Boolean]
    # @return [Money, nil]
    #
    # source://shopify-money//lib/money/parser/simple.rb#16
    def parse(input, currency, strict: T.unsafe(nil)); end
  end
end

# source://shopify-money//lib/money/parser/simple.rb#5
Money::Parser::Simple::SIGNED_DECIMAL_MATCHER = T.let(T.unsafe(nil), Regexp)

# source://shopify-money//lib/money/railtie.rb#4
class Money::Railtie < ::Rails::Railtie; end

# source://shopify-money//lib/money/money.rb#13
class Money::ReverseOperationProxy
  include ::Comparable

  # @return [ReverseOperationProxy] a new instance of ReverseOperationProxy
  #
  # source://shopify-money//lib/money/money.rb#16
  def initialize(value); end

  # source://shopify-money//lib/money/money.rb#32
  def *(other); end

  # source://shopify-money//lib/money/money.rb#24
  def +(other); end

  # source://shopify-money//lib/money/money.rb#28
  def -(other); end

  # source://shopify-money//lib/money/money.rb#20
  def <=>(other); end
end

# source://shopify-money//lib/money/splitter.rb#4
class Money::Splitter
  include ::Enumerable

  # @raise [ArgumentError]
  # @return [Splitter] a new instance of Splitter
  #
  # source://shopify-money//lib/money/splitter.rb#7
  def initialize(money, num); end

  # source://shopify-money//lib/money/splitter.rb#76
  def [](index); end

  # source://shopify-money//lib/money/splitter.rb#95
  def each(&block); end

  # source://shopify-money//lib/money/splitter.rb#33
  def first(count = T.unsafe(nil)); end

  # source://shopify-money//lib/money/splitter.rb#54
  def last(count = T.unsafe(nil)); end

  # source://shopify-money//lib/money/splitter.rb#103
  def reverse; end

  # source://shopify-money//lib/money/splitter.rb#87
  def reverse_each(&block); end

  # source://shopify-money//lib/money/splitter.rb#109
  def size; end

  # source://shopify-money//lib/money/splitter.rb#16
  def split; end

  # source://shopify-money//lib/money/splitter.rb#31
  def to_ary(*_arg0); end

  protected

  # Sets the attribute split
  #
  # @param value the value to set the attribute split to.
  #
  # source://shopify-money//lib/money/splitter.rb#14
  def split=(_arg0); end
end

# source://shopify-money//lib/money/version.rb#3
Money::VERSION = T.let(T.unsafe(nil), String)

# source://shopify-money//lib/money_column/active_record_hooks.rb#2
module MoneyColumn; end

# source://shopify-money//lib/money_column/active_record_hooks.rb#5
module MoneyColumn::ActiveRecordHooks
  mixes_in_class_methods ::MoneyColumn::ActiveRecordHooks::ClassMethods

  # source://shopify-money//lib/money_column/active_record_hooks.rb#10
  def reload(*_arg0); end

  private

  # source://shopify-money//lib/money_column/active_record_hooks.rb#22
  def clear_money_column_cache; end

  # source://shopify-money//lib/money_column/active_record_hooks.rb#26
  def init_internals; end

  # source://shopify-money//lib/money_column/active_record_hooks.rb#15
  def initialize_dup(*_arg0); end

  # source://shopify-money//lib/money_column/active_record_hooks.rb#31
  def read_money_attribute(column); end

  # source://shopify-money//lib/money_column/active_record_hooks.rb#44
  def write_money_attribute(column, money); end

  class << self
    # @private
    #
    # source://shopify-money//lib/money_column/active_record_hooks.rb#6
    def included(base); end
  end
end

# source://shopify-money//lib/money_column/active_record_hooks.rb#75
module MoneyColumn::ActiveRecordHooks::ClassMethods
  # source://shopify-money//lib/money_column/active_record_hooks.rb#78
  def money_column(*columns, currency_column: T.unsafe(nil), currency: T.unsafe(nil), currency_read_only: T.unsafe(nil), coerce_null: T.unsafe(nil)); end

  # Returns the value of attribute money_column_options.
  #
  # source://shopify-money//lib/money_column/active_record_hooks.rb#76
  def money_column_options; end

  private

  # source://shopify-money//lib/money_column/active_record_hooks.rb#126
  def clear_cache_on_currency_change(currency_column); end

  # source://shopify-money//lib/money_column/active_record_hooks.rb#135
  def inherited(subclass); end

  # @raise [ArgumentError]
  #
  # source://shopify-money//lib/money_column/active_record_hooks.rb#111
  def normalize_money_column_options(options); end
end

# source://shopify-money//lib/money_column/active_record_type.rb#2
class MoneyColumn::ActiveRecordType < ::ActiveModel::Type::Decimal
  # source://shopify-money//lib/money_column/active_record_type.rb#3
  def serialize(money); end
end

# source://shopify-money//lib/money_column/active_record_hooks.rb#3
class MoneyColumn::CurrencyReadOnlyError < ::StandardError; end

# source://shopify-money//lib/money_column/railtie.rb#3
class MoneyColumn::Railtie < ::Rails::Railtie; end

# Allows Writing of 100.to_money for +Numeric+ types
#   100.to_money => #<Money @cents=10000>
#   100.37.to_money => #<Money @cents=10037>
#
# source://shopify-money//lib/money/core_extensions.rb#5
class Numeric
  include ::Comparable

  # source://shopify-money//lib/money/core_extensions.rb#6
  def to_money(currency = T.unsafe(nil)); end
end

# source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#3
module RuboCop; end

# source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#4
module RuboCop::Cop; end

# source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#5
module RuboCop::Cop::Money; end

# source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#6
class RuboCop::Cop::Money::MissingCurrency < ::RuboCop::Cop::Cop
  # source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#48
  def autocorrect(node); end

  # source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#22
  def money_new(param0 = T.unsafe(nil)); end

  # source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#46
  def on_csend(node); end

  # source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#34
  def on_send(node); end

  # source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#30
  def to_money_block?(param0 = T.unsafe(nil)); end

  # source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#26
  def to_money_without_currency?(param0 = T.unsafe(nil)); end

  private

  # source://shopify-money//lib/rubocop/cop/money/missing_currency.rb#74
  def replacement_currency; end
end

# source://shopify-money//lib/rubocop/cop/money/zero_money.rb#6
class RuboCop::Cop::Money::ZeroMoney < ::RuboCop::Cop::Cop
  # source://shopify-money//lib/rubocop/cop/money/zero_money.rb#39
  def autocorrect(node); end

  # source://shopify-money//lib/rubocop/cop/money/zero_money.rb#29
  def money_zero(param0 = T.unsafe(nil)); end

  # source://shopify-money//lib/rubocop/cop/money/zero_money.rb#33
  def on_send(node); end

  private

  # source://shopify-money//lib/rubocop/cop/money/zero_money.rb#56
  def replacement_currency(currency_arg); end
end

# `Money.zero` and it's alias `empty`, with or without currency
# argument is removed in favour of the more explicit Money.new
# syntax. Supplying it with a real currency is preferred for
# additional currency safety checks.
#
# If no currency was supplied, it defaults to
# Money::NULL_CURRENCY which was the default setting of
# Money.default_currency and should effectively be the same. The cop
# can be configured with a ReplacementCurrency in case that is more
# appropriate for your application.
#
# @example
#
#   # bad
#   Money.zero
#
#   # good when configured with `ReplacementCurrency: CAD`
#   Money.new(0, 'CAD')
#
# source://shopify-money//lib/rubocop/cop/money/zero_money.rb#27
RuboCop::Cop::Money::ZeroMoney::MSG = T.let(T.unsafe(nil), String)

# Allows Writing of '100'.to_money for +String+ types
# Excess characters will be discarded
#   '100'.to_money => #<Money @cents=10000>
#   '100.37'.to_money => #<Money @cents=10037>
#
# source://shopify-money//lib/money/core_extensions.rb#15
class String
  include ::Comparable

  # source://shopify-money//lib/money/core_extensions.rb#16
  def to_money(currency = T.unsafe(nil)); end
end
