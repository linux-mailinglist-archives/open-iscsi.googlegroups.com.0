Return-Path: <open-iscsi+bncBAABBYN65GEQMGQEB2ER6RQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 538D2405D49
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Sep 2021 21:24:19 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id w35-20020a056830412300b0051bae474534sf1620742ott.21
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Sep 2021 12:24:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631215458; cv=pass;
        d=google.com; s=arc-20160816;
        b=NdhcpHTz7y/I1EfxQPHaLM+86PbZbhyruxpLA0ZeBzhEgwgE4BkRxvrFYh3spUnlpF
         Rtea9vW7jbiJS/QWAAA1xMtXJ/Ok7rSCfZYIgp4gk4izfT9ZpF5fuqtbWAfxx38e9YDw
         +EqJPkoE7z/I05Eehtm75jX6hHrld+DR2aOhGCoa0Mnq/zqHsVyQWztO6Rw83dRCU6S3
         zttVsF9zcMG+RQ9kSkRRwx+ajwQsMcLo0YEkWQRRjhN+etHiZh+WSrP+huTu0sCbd8/G
         QCxy3RVRxy/0eu6GoOxVT0/AGs3nA6h62HHVXssuK5As+qlmBBBCkddoLdOocrxIx9zp
         XLwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to
         :message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature;
        bh=CEAEjKPQELCzedznGIO1VYzmMqgFLXaCIx2EIe+CFiU=;
        b=i/qOOsR0AWt6y2Qv/RF6M1pRpBTrRTkZEElJoWOhBeo6SZYeyppOSaeJXxPOL6OEhR
         WSRQ/YdeoOJYlQr7+aJMeYjgg/CKIf52FvjCnSUQqKMZ6CFl/C+vaKY/vf11zrDOIVpn
         ItujQxfFtYcNb+iOZNghKrt1VwBlfWmpMt3tZiWEkWDn8Jc+UEhZcCFE5ClCvMdwA3w1
         yLDPB9/jgdH6oV94oyzM6K00FjDQkdZWgbKCmsRW4SjV1mnGEaSxL9x2da2H3FssFE+e
         FykmvxGZb/K+YQVVC3KdcXNrWUAHODSSWHE8hrsDXk6h5+eVrosDUT2WBoGczWFgWS96
         NfYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CEAEjKPQELCzedznGIO1VYzmMqgFLXaCIx2EIe+CFiU=;
        b=piPgG0J92b839cssCcLHdFdYFxeMg2czX8QPgVvERZZwgt1ODAUs5S0TslcUzzzgkS
         Z5kwXtPY+zMqrGdZq74FgqQYTBuIvTfkUBPRdyP2V5vb+b8fxpXMIsbGzVNK9BN/9rMT
         kZjjg43OUg5JoNW86L6wN8xMprsPqk00ZdKv/12MAqSsyvAU9NngMItnuo0xyrZs6jzQ
         sQngxL3mpeQFcX/aZcl+W56yqv7sPOE3I6l4SaSAllU9E7jjhO/n1yYwPfgFXNMY4WPv
         6qiBD6fkXEfJGVUJmy3+MIkkd7HDswvR0AggYj5kCp5Rh7hlIu/2qj1NPO3lQkNvQIb9
         jSDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CEAEjKPQELCzedznGIO1VYzmMqgFLXaCIx2EIe+CFiU=;
        b=E1R60Sl89Nm49Z94PwMwBEkpJibj9YeaPK+Ia7hu8Evs/pgDXZMGTfPMOmI9c57B27
         4pAVXrBZZn/qx3RvrJxcNkdyNYEXI6MyGJrup2Uw6+/VKoAWMAdyRn3GV2Ue9gWUSigc
         smUTlTewzh9IsQ1vgycFeqzP+cr3nxLN25srkiXyxzkdBQ0EYEQz9dkUNcro/qQVr4PV
         k80xYVVpI78NIlcOBLhiQ4svwqBXYrCpq8IXSvmtukN5Pgvir2BOER0ZuqXHl1mQzxxq
         3SDdqnOFY9KBg2CXKxqL+nkMvaaEFLRZ4GlMBjT5nfB26zHaVf4Nu7OQ+n+IQKLxeg/4
         fwBA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532jNkl7aYaf9BehNviU+PZuVK/zWgroTRveNneP22ZKS/MEDCeS
	AkRIcpUumqr0QxRQG4obJ1c=
X-Google-Smtp-Source: ABdhPJzNBvLjjs0NSbR43hvVYF89Lw7Ap3CUyeo5G8aOvxxAfYeRRMNZneKG/aIIxONbIkKZ/1CMvA==
X-Received: by 2002:a05:6830:124b:: with SMTP id s11mr1277769otp.90.1631215458030;
        Thu, 09 Sep 2021 12:24:18 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:11d7:: with SMTP id v23ls876423otq.2.gmail; Thu, 09
 Sep 2021 12:24:17 -0700 (PDT)
X-Received: by 2002:a9d:6359:: with SMTP id y25mr1294310otk.274.1631215457809;
        Thu, 09 Sep 2021 12:24:17 -0700 (PDT)
Received: by 2002:aca:b6c1:0:b0:26b:80ac:4d09 with SMTP id 5614622812f47-26dbc18eff7msb6e;
        Thu, 9 Sep 2021 08:48:05 -0700 (PDT)
X-Received: by 2002:a9d:6e0d:: with SMTP id e13mr465686otr.304.1631202485626;
        Thu, 09 Sep 2021 08:48:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631202485; cv=none;
        d=google.com; s=arc-20160816;
        b=oHMV6+u6qkPD6XyqIN+lYjQnZ4N0wvuK8UensncJlwHTWoAjfLkoI83fbRfXiua2My
         VKGmZH0uU30Zyy3pH+2LOFN6l3xDHYAzwF0m3O9IRSNuGR6hM4+4W9HJGxSSAbAAGEA7
         5axfBPmdxVOisTM/LqV0qaI84moLiobMxz8j1TSobhq7aHEnfDt1SlaeWxS5MqH65e5G
         KVKWZPhq54+e4vbX9aByQJG//bBeJprZT895GkaOFCLP+2c6efa40EXNeEYHUHbi/i+N
         u4OWb82c36k99QFvB/sYSJRaLAcnGEgE9f0YbHU1BQbFBypQXtVmSP4IIo/2fy/lJZxD
         4wTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=58dfDqPdIUyOLHIMjgry6fszY+RW0sZcy2cRa/+C3oc=;
        b=zrmeRzOh7/iGMYKOUY2ht1UUBz9nvmkWhOA4yKdOq56qal/PmDHFn5UJ1XS7vr2zJE
         zq9MSSNpuPrnLLVPnl2zQEUGLeg0zU6PbeaLrQt4GqEUcSCVQEZJ9Mzb9yUl4v9DXiUY
         7j0gSBYnEx5+pdNM5KWETULk96lSBK9ndv3/E7PCkQG+nWmV85fmHyZZoYzMStTQ/BXp
         YLYWhlGAc2QjoAXH0oosHS39cEBJptdCBwawT0sryS6OSx3MyymVxaLGpsD4qqvE2R6G
         ImnlkcNASCs01hlphJzXvD8B+Wk1LRr+fvpQl37/gaL9GZ0jUs0p+GqM47xoSvJfqWw6
         jKVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id q18si190413otm.3.2021.09.09.08.48.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 08:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from localhost.localdomain (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id CAAC92201B8;
	Thu,  9 Sep 2021 23:48:01 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	michael.christie@oracle.co,
	open-iscsi@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Ding Hui <dinghui@sangfor.com.cn>
Subject: [PATCH 2/3] scsi: libiscsi: fix invalid pointer dereference in iscsi_eh_session_reset
Date: Thu,  9 Sep 2021 23:47:28 +0800
Message-Id: <20210909154729.20715-2-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210909154729.20715-1-dinghui@sangfor.com.cn>
References: <20210909154729.20715-1-dinghui@sangfor.com.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRkfSkhWTUwYGExIH0pNGh
	odVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBQ6Ejo4LD4VGh8JKxASM0oZ
	FgIaCwFVSlVKTUhKSUtJT0NJSElIVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSUpDSDcG
X-HM-Tid: 0a7bcb3e976bd998kuwscaac92201b8
X-Original-Sender: dinghui@sangfor.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as
 permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

like commit 5db6dd14b313 ("scsi: libiscsi: Fix NULL pointer dereference in
iscsi_eh_session_reset"), access conn->persistent_address here is not safe
too.

The persistent_address is independent of conn refcount, so maybe
already freed by iscsi_conn_teardown(), also we put the refcount of conn
above, the conn pointer may be invalid.

Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
---
 drivers/scsi/libiscsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 712a45368385..69b3b2148328 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2531,8 +2531,8 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
 	spin_lock_bh(&session->frwd_lock);
 	if (session->state == ISCSI_STATE_LOGGED_IN) {
 		ISCSI_DBG_EH(session,
-			     "session reset succeeded for %s,%s\n",
-			     session->targetname, conn->persistent_address);
+			     "session reset succeeded for %s\n",
+			     session->targetname);
 	} else
 		goto failed;
 	spin_unlock_bh(&session->frwd_lock);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210909154729.20715-2-dinghui%40sangfor.com.cn.
