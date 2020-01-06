Return-Path: <open-iscsi+bncBDA4VMEL3QNRBU4GZ3YAKGQEM5XRYPQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 645721317F5
	for <lists+open-iscsi@lfdr.de>; Mon,  6 Jan 2020 19:58:27 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id j6sf6546752edt.21
        for <lists+open-iscsi@lfdr.de>; Mon, 06 Jan 2020 10:58:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578337107; cv=pass;
        d=google.com; s=arc-20160816;
        b=NGtRXgwwCeX6jrRn1Xw4OPpC0AtLhJMdO1VhuG/9bGhETUk5qYDgaq/17Pwhxa3K8l
         0QBjeg6VvAJmc8j+0x1UPqTQUDO34YyIIne3BZ84mH3w1pKpNYIS2Xg4pG6yUke4+de5
         nXDNH6Yr+DNGzSZQV99YZmFm7beQQP2n6mqXpOxdzipCgbEgfpOpqhAPV40nwie3jTm2
         8hQT4I/PpN+XsOFNcXDfwe5VyRVmRS1wHIa7Y7ZPGXhNQqv4EbqSoA8f5fnp8mnQyo2/
         wxjGwZ45NQIwvHf/kSWc6NAVyXGkIdsZJRaVncThRQO5wtIJQiTC5sao6OD4rr47vAEC
         89Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=25i5RU8FG5+xksFcFfVzXVmdFDpy0B+4wXIuFnmuYCY=;
        b=mKETdfF4KhVZOVwCc7Q1hkpJr0cpcwRNdz3Vb/5OSzGiwlU/4+CBpmpvCr6wKhMWn2
         VgmI64/EkSGXPmFL1XnsKr5G3UMMw1aa4+eNv118tpEko+dtuWsL9FKvOKi+j5VPYM0g
         vbNLrG0KzdfBqpzVBHx6Lh2YtHiNA/HvS4lUqxUBupG9HkesXAxMy3aLHyEq34/5jQ3r
         ce/DOtj0Dmunk/+UnjTsKcUrl2brMlES3IoAg2OKsqXQwDdGQW9rgJ5QNqdenCP2+w1k
         fl6S7fAOijnhmX6bUoML5igc5zogdH+lw9bAdmN4CdgzQuB+0x9MS8J9eIF2r8cHDL4U
         gkeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=25i5RU8FG5+xksFcFfVzXVmdFDpy0B+4wXIuFnmuYCY=;
        b=Ye6kKE7VYDHYLdlxkpd4yu1frVc3jNwCW+Ruixvv+9LUYHXKObeg/vsagktXJaP2TN
         xN0mQ+3/yyEA//DnGa/rGDxK3AMn8aLT3zijmx57YwO0HRUDQ81LjzvCXMwjPjYS6cq/
         Ji86FUwjZnY19J/BE1p1AEuusuXE+3e511y1Ryd4yHyu/Dl3TlcbfHluP1TWRUvvYpan
         C9DK8AgeIcvhBDjhrqShlsioip3rMyGaxO86lGgoG++uV6UJl8IPB9udjesXp94Uwu+I
         22sXvzE2Uh3WIpkMYiCd/vhPko0y0NaOxmf9IZ4ftWcrjPPbvOAuFhOYBwkEWvvqeW1E
         tS/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=25i5RU8FG5+xksFcFfVzXVmdFDpy0B+4wXIuFnmuYCY=;
        b=CFzAf2pprXXY6Yz01kekLz9ta7lTVVkkEzvwHOTuMB3wIvk7zaC3HvtH/PI+s0TL22
         /npYepQ9eFpfnUTx0AUJ0viHs5n3LR/OYZQ38LboR3mrY46FbTYuTyoKUM//Uus2PpQM
         yFqWjUYA1OmQy1HFzJ5BOjIc3ljSXrkJ1PNU7gUQR/JS0RP78N8vtQP7P88DAB7fLSTG
         YVGXvUIDnnMRV5jawPVn7OZKKpR5e5kjnkQX/OWhpAUctctnUi/peIddzQcgPukAx2V+
         DPkVPoCm9YmeRIdwQVMvbFpwbeUj7uGLTsYCI2w7RECx7bcvlKL14CUgOYY5di9paYDR
         OGIQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW5HcQbHgrbFIiudZUwt7pZ6pswl3X67UhbyfOQLIeGjAp2cHp1
	Nx8BEgHcr6OJPsk0tOE5OUw=
X-Google-Smtp-Source: APXvYqxUjvh5A8sTcpagm/maiofy0AV1HHfhAMvoRzovTFqG7xkf07g1vlkOJcedGSPw0Y/jdb2JMQ==
X-Received: by 2002:aa7:d511:: with SMTP id y17mr108427257edq.41.1578337107126;
        Mon, 06 Jan 2020 10:58:27 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:8597:: with SMTP id v23ls15751163ejx.6.gmail; Mon,
 06 Jan 2020 10:58:26 -0800 (PST)
X-Received: by 2002:a17:906:2cd6:: with SMTP id r22mr89877361ejr.313.1578337106636;
        Mon, 06 Jan 2020 10:58:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578337106; cv=none;
        d=google.com; s=arc-20160816;
        b=nc4OZH+RySixBnPIYG01ZgnQFEHFWw27M4IbM5bHVJsTXk+hUxSsPunqNfSVOCi5+p
         pCsI/K3qXV0lWEMUd0zOAB3VTiLOPopksuvY3Ls9m3uRosA2tgNe+Vp//d7C6Ir9uDXa
         Ff6MhB/efHxlsMepxguZJoLi3thQdBDyVKcIbjUchwDXBj2ohhlgIcmTHmytg9Vap1aH
         ObJM/7GxhpI1HGyFqOvBUVSov1Oiv6m+MO9NyRk4KG5YGjYaBRxdoHE8hGFHx4yMpBLq
         DWiGmGzkjUexziif4II1XJN7k+z8yOzRUp1c9r0WTRIJa4Ct3eRJC0nNj7c7osvfMpB8
         L+pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=3LUxbbv9oMjGQWYNO1GAk2gz2g6i7YbuQPZvOhwhLvc=;
        b=hKrH9w5pydlUaVNbPbHApCqu6HSJj5SaZwi8RY+8E0U3iyQNf1xMFMcjS54TSYDM9e
         39xjITkqz6Rbnfsu/JlK7Aq6y9vP7tqSweN1WuZCgzaGceKdTWygSmMCBUY3pWwKs3O1
         RGyWn/Fz6Rm7Qh5Z0RcW9JAzp1bVWEqfxK3OJSylsMNYoK2I9/FteShX7YPr4t8NrrYP
         4Pn0pFXhmW/bZobB+HfHlY0VT7IGvn91VOL4ohCTRk5hHTY2mQpXE0tPhsxwtiChKktx
         3Wgp+YBzMWPEKMJJaVEFb47fw7mpP9Xedxayo89Os+wFLPuqBY97yJNJ5OAhZIWlp4na
         shaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id cc24si2469533edb.5.2020.01.06.10.58.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 06 Jan 2020 10:58:26 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from localhost (unknown [IPv6:2610:98:8005::147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1EA22291166;
	Mon,  6 Jan 2020 18:58:26 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: gregkh@linuxfoundation.org
Cc: rafael@kernel.org,
	lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/3] drivers base: transport component error propagation
Date: Mon,  6 Jan 2020 13:58:14 -0500
Message-Id: <20200106185817.640331-1-krisman@collabora.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Hi,

This small series improves error propagation on the transport component
to prevent an inconsistent state in the iscsi module.  The bug that
motivated this patch results in a hanging iscsi connection that cannot
be used or removed by userspace, since the session is in an inconsistent
state.

That said, I tested it using the TCP iscsi transport (and forcing errors
on the triggered function), which doesn't require a particularly complex
container structure, so it is not the best test for finding corner cases
on the atomic attribute_container_device trigger version.

Please let me know what you think.

Gabriel Krisman Bertazi (3):
  drivers: base: Support atomic version of
    attribute_container_device_trigger
  drivers: base: Propagate errors through the transport component
  iscsi: Fail session and connection on transport registration failure

 drivers/base/attribute_container.c  | 103 ++++++++++++++++++++++++++++
 drivers/base/transport_class.c      |  11 ++-
 drivers/scsi/scsi_transport_iscsi.c |  18 ++++-
 include/linux/attribute_container.h |   7 ++
 include/linux/transport_class.h     |   6 +-
 5 files changed, 137 insertions(+), 8 deletions(-)

-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200106185817.640331-1-krisman%40collabora.com.
