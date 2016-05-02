################################################################################
#
# perl-markdown-pod
#
################################################################################

PERL_MARKDOWN_POD_VERSION = 0.006
PERL_MARKDOWN_POD_SOURCE = Markdown-Pod-$(PERL_MARKDOWN_POD_VERSION).tar.gz
PERL_MARKDOWN_POD_SITE = $(BR2_CPAN_MIRROR)/authors/id/K/KE/KEEDI
PERL_MARKDOWN_POD_LICENSE = Artistic or GPLv1+
PERL_MARKDOWN_POD_LICENSE_FILES = README
PERL_MARKDOWN_POD_INSTALL_STAGING = YES

$(eval $(perl-package))

define PERL_MARKDOWN_POD_INSTALL_STAGING_CMDS
    $(INSTALL) -D -m 0755 $(@D)/bin/markdown2pod $(HOST_DIR)/usr/bin/markdown2pod
endef
