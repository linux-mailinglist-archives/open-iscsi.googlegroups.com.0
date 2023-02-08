Return-Path: <open-iscsi+bncBC755V5RXMKBBLF5R6PQMGQEWMU4HJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BD09268F5C3
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:02 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id g25-20020aa7c859000000b004a3fe4cbb0csf12792272edt.17
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878062; cv=pass;
        d=google.com; s=arc-20160816;
        b=zv5kBldQ4SuAsSIjSlTdn+QbGoLxQ8y4hR7GRBntwnSVLobvM7nlVNUdbIpnCEQiTD
         x5eMR5dvxpbN+JuFh7pfMQX3twERzy+5qqIJEiOQFYju6MdJ/dI9j+Xpdu3X8qy1THqC
         g93WojXD1nWIGDKUdPzE7yV310Jj2wNPp71LNhEW1sMmt0Z3ppAKZrELmq9l2HqUK4eQ
         thVwntbvNt4ouwP9L+ooOCsRLKfdmiUpEc5qXgnFZ+w6cS+uHdmfTVQQzimuHBq26q12
         55hjtfBJKJe2+WMBi0efV+omGWrITLkNqSa9jAIujTellk4jt399DJeY6reTYaUw1nol
         2lFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=7MNDPfAODo2CbmrzsxPDtNKkfKTk2DZmNod24EoJYuI=;
        b=FgfXsE3KoBbBlfsvkZEuLT2Vlsj/0Setbfsbqr4wiSNzd8yCXSvQlUy2alrlvzGfZA
         4zLXC2x1oIPb5sNvufaj0iUP8bUx5TSrZFu42AEQTVKHf7KlBfO1rPWrh7U+d7z4T5Vi
         bJL6yEwxjFcZUumMKDi8xMpzlJlaIbW1StQhxmrW5LwJLnX7fy/5GKCB44qx3vrjca8L
         ojbWgVwmT8a47uCX4WnkkDKPsJUC2YrasEBF50SVMFU1uN3rY7JzAIQaalJqFaHX3OJt
         XfxMNFIlrN4zKAnV+Zn7zIY1oV4gam6mGM8P+faNLNWZ+joc4Z28z3mV3JHRLDgo0tj+
         9PQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7MNDPfAODo2CbmrzsxPDtNKkfKTk2DZmNod24EoJYuI=;
        b=DRG3cH9c5wLvJWWYfPpaH/X9mifLRTC97EzOlL0oRVNEphyaFDoHajZa7MhwJjD5kc
         KeytyX7dSQy68kTM89hQqiZoJjMzmuSH5bFnXr/0H4/w935bYbw9dHURpjjqz/AqaH0K
         vtrdg6HJ5R231q5H7+u8pAzONT6mAkLO3oDaV2V0KZJ3kp0wBIwWksNEmi2+DH8LZsxB
         fWDxoK+bZ6fiNLz3L9jl6J9sTpy7pq/K0rePOIraO1yhvdo96DoiRTayd3FysaCdWLxQ
         wIZvlxPojp2RvuA3lDoF0C2RAZ2Ds78hQpqT7LYGkAp2nIpyCaWe8+oJ9DJxewsZX5Zv
         8/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7MNDPfAODo2CbmrzsxPDtNKkfKTk2DZmNod24EoJYuI=;
        b=5J8soZKlMAoEeCq5XtwSerV4QcqhCcM4aev3aIUNu+K9T6xkiz2/jDdhOyViu7zhpC
         l2J1MWs234xTYH+lRiwHZncQKaVqLH2o+5+hUcEMKmBRyZKAfYx0T3+pnY7t9v+0JEbB
         x04TcV9cRlMBM5DsZUDejU6gLxWI7mt/a5bR7n43UQe0C1eqHjhaPrP2Co67+zqYDZwl
         uu4CLqlTX1jWU3Q2uO1/D/N5Kd+mpi9lDJs+xi3AhThFPEnDmLFj/Tgdps+mrZKV1R8v
         zWhyKtwyV6pdX/i2igfPQaLaAI7KDAWmIzvVk13uQ89qKy4LAm9fuL3ovK4W2qb8Gxdc
         hOqg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKVTFlDEdRsLodzCj7tEZC1c/Xem9z172vxMRJm0W7U6cXrSsbl5
	ZoxR0pGQCe+8JD3SO3ObV/o=
X-Google-Smtp-Source: AK7set8hAleVCdfyFgVJ0jVACAAq3yBpO/pvTa1QqqdLWFSMlO06WfvLqTYQf+CchfuhK7/uyQWb9Q==
X-Received: by 2002:a17:906:a219:b0:8ae:ee7c:924b with SMTP id r25-20020a170906a21900b008aeee7c924bmr433666ejy.235.1675878062311;
        Wed, 08 Feb 2023 09:41:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:907:9d17:b0:84d:1543:d10e with SMTP id
 kt23-20020a1709079d1700b0084d1543d10els12688617ejc.1.-pod-prod-gmail; Wed, 08
 Feb 2023 09:40:59 -0800 (PST)
X-Received: by 2002:a17:907:d89:b0:890:4731:d1bc with SMTP id go9-20020a1709070d8900b008904731d1bcmr10873334ejc.38.1675878059585;
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878059; cv=none;
        d=google.com; s=arc-20160816;
        b=eIKqbidhoNLkiWE25WEQ/VSSUN3iXwvWTVt1IxihLWWsSmZ6hfsXgt3nq5hjnptxDS
         WmjLF2kSUkdq/e2ly0gUS1BtNqZWJs8aBQP6tyYsjSbVB9UTjwkOxx/pbbrGMPjYuOSX
         4Z3fcDhGWWuXHl+Nm1Ov6ac5NQsSW6Nu9hBgVC57qkP9lxsrhg3P8gv83AmFUSilsrFT
         mGNZ946gpqSkS88qNDFvh+Ll/ALVIEl2GMeD2QhSTqxKz7F1SR6mpExHNKVEgn6cnKKI
         3TeyGoSGMv6BlIS8D8Jnu6yaQCKta5gVI0pj53Ywp8tm9jddYUYWBB7C6r6+Geds88Vs
         3bEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1ydODWA6s+ta238i6X7gk8JsMeQxSh+JHPJ2O/Wk104=;
        b=dwrxkH/1xHyUWRHQr10kicmCpLAOFq82XsL1pUg7YezUlLKuhEGFqwJdmJgVBRk3I/
         Yd4Ymo9oo50KZ4oPCHdYdqRp/CwlcEHrl8kY50RvHY0xLo8SC8yY+kK+FQYNzsR5waxw
         S6tdEySfI0QkLPgRTcAbBbbClk/J0i0yoS46462lN9CZDSgJQS5DoLYuSH9JNRLjAQ7n
         85S0yNYygJsc+kKIoXC4p1pzEPcqge27cg48eGgJ0adA3ExknB4KAHlnEqRrcqMWo0hJ
         +G4g8z9XOTpPJehXwUCrdAXODulFDgyzmvqwBXaOG81avkYkrJhCBf2uCYjlAtT+9i0W
         BcLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id sb25-20020a1709076d9900b0088d43b316aasi654724ejc.0.2023.02.08.09.40.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 3ABD72233E;
	Wed,  8 Feb 2023 17:40:59 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id F3C822C141;
	Wed,  8 Feb 2023 17:40:58 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 1C9BFCA184; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>
Subject: [RFC 0/9] Make iscsid-kernel communications namespace-aware
Date: Wed,  8 Feb 2023 09:40:48 -0800
Message-Id: <cover.1675876731.git.lduncan@suse.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted
 sender) smtp.mailfrom=lduncan@suse.de;       dmarc=fail (p=NONE sp=QUARANTINE
 dis=NONE) header.from=gmail.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Lee Duncan <lduncan@suse.com>

This is a request for comment on a set of patches that
modify the kernel iSCSI initiator communications so that
they are namespace-aware. The goal is to allow multiple
iSCSI daemon (iscsid) to run at once as long as they
are in separate namespaces, and so that iscsid can
run in containers.

Comments and suggestions are more than welcome. I do not
expect that this code is production-ready yet, and
networking isn't my strongest suit (yet).

These patches were originally posted in 2015 by Chris
Leech. There were some issues at the time about how
to handle namespaces going away. I hope to address
any issues raised with this patchset and then
to merge these changes upstream to address working
in working in containers.

My contribution thus far has been to update these patches
to work with the current upstream kernel.

Chris Leech/Lee Duncan (9):
  iscsi: create per-net iscsi netlink kernel sockets
  iscsi: associate endpoints with a host
  iscsi: sysfs filtering by network namespace
  iscsi: make all iSCSI netlink multicast namespace aware
  iscsi: set netns for iscsi_tcp hosts
  iscsi: check net namespace for all iscsi lookup
  iscsi: convert flashnode devices from bus to class
  iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
  iscsi: filter flashnode sysfs by net namespace

 drivers/infiniband/ulp/iser/iscsi_iser.c |   7 +-
 drivers/scsi/be2iscsi/be_iscsi.c         |   6 +-
 drivers/scsi/bnx2i/bnx2i_iscsi.c         |   6 +-
 drivers/scsi/cxgbi/libcxgbi.c            |   6 +-
 drivers/scsi/iscsi_tcp.c                 |   7 +
 drivers/scsi/qedi/qedi_iscsi.c           |   6 +-
 drivers/scsi/qla4xxx/ql4_os.c            |  64 +--
 drivers/scsi/scsi_transport_iscsi.c      | 625 ++++++++++++++++-------
 include/scsi/scsi_transport_iscsi.h      |  63 ++-
 9 files changed, 537 insertions(+), 253 deletions(-)

-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/cover.1675876731.git.lduncan%40suse.com.
