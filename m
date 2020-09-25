Return-Path: <open-iscsi+bncBDLPRE656MLBB64MXD5QKGQEC3ZRA6Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A30278BC2
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:02:19 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id w7sf1189177wrp.2
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:02:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601046139; cv=pass;
        d=google.com; s=arc-20160816;
        b=BeYxBy3FhheeHD5LMZxSdubrHCB9ScT+u8lU2JvNcxMc2QZ3C6q7wbMah4qmmP5IpM
         AATEVwLtjlcl3JHfUeo7ynq3M1S7D0BnypmRwbfHRab+0plkS+rxiRVtMJDldWxxJh72
         m6/e5llspjCMRS+/nV7WcbdOgUhS+5gVO5gS+AOIquxSts8dpOgrADR3R4rXBPTch16W
         eJPOVQgFzH4CPzn99F7j5gEB8MgZbMbGq0LH6HUvjSZKr+hcV9fzEGkfWdKjNAZHUbJ4
         J26LJj4xcFSU7FCfiic5ZOgfKeTXM2PHJQXi6WeFWzpJ1ffQ24W6QTVIYpwSmXrMp+Ct
         KhJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=M7qHJr7hm0UOX+N5cbEtcBLuipPe+sA8wQvAJPdpIqI=;
        b=zC6XyrV8p4r7GM1gxpmckRvrqUqH1D6Mw93T5FMHbRmusn/MphFlQ6IvZfNW9bdG0Z
         q2Jx41Pv2STZUMUUdkH8Ad1LHlxwH/gfSL2rH5LiIaidghu4PKjxcCnTm91MhUIJ6UoE
         5ePxzTVppH3tvHIUantW+qyK/yZedQe0Vb9b60pCwRwr4BL2x2qDCBr/SCyg7NgkL0cf
         GfA4CPHf5jgYD45tLv8wsyAEcjxLVQ5uFH8I0iDaALkuY9+tz0TLB0yDSAO92wI5oGYJ
         LE23O3iiLLxiL/Q6NspAMy06rNES2osFo9AxwCbkK9pst4/KkAykm7nnbVULhB9Nk6F4
         ymEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M7qHJr7hm0UOX+N5cbEtcBLuipPe+sA8wQvAJPdpIqI=;
        b=EpNqKkUIfDWOQgVdhirlgciGkz/+cIbiG+eFbYjyJoL2WHQXcMvzkf74aZYcO1oLql
         JDfdYb/M6RmXlTEZZhT5fhjzGaN4gtBiGRHrWeeda6dsWoPLyHRN7wJKFMkZZzqP6Srj
         fIB6aALb+f1/B8tFkjh3pTmjdmGh25kk252b1wQkl1SYbAHAWb584NXAHaN2DcL6dyua
         DoxnLR4UqzCtDCblPl/OxryWtqTHk3RutC3Arm1DUq8b6/mQE3cxOWXfmTnmDcmQu6GS
         XBKiZv1ov719mHMNTxZaNWelTzcqk5xa6Iz0j94LAGEcgUJ+PBb1rRXQPByiNhfBfsaY
         baFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M7qHJr7hm0UOX+N5cbEtcBLuipPe+sA8wQvAJPdpIqI=;
        b=QvqJG9Y5td7x9dbi1z0dv6U9B02ym8Ksymhsegimeo05/2xYk3trnymgis9JugV08F
         bBiMRTTCWujBW89tg2wwNcyOAO/TzkslpF5IMQYwRlc3L0n8/cVWW0qx17/xXJTWkstR
         kTe3QdMNeGi1+7UeEBWo+OLEc1qE0YjN0huKWc/RgjLCh/ktsrtYh7QZEQk+LocBJ49J
         uZwgfxlGhZZiPIn1F0+oxVUxXGGu+b9PsNtaOGRAAhNZvQYFOOH+6sR9lHEDwtKi4ooO
         4V9NRVyWqNRZ416K5Fits5Kzu2bctWtepGlETI1jBwbugGusFeoZ8aTU/C/DSDMTWR+X
         /JzQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530Fnd5ETo044C2LKdNEvjuNnrF6rfvdDuYl9C3OPD9BDkGaQKwk
	djuUJ9uIFhDjwL4HcYZS6Pc=
X-Google-Smtp-Source: ABdhPJxC5xbzek++PLngqUKwf+//DoHeBn29sRhTNRwUqzU7R3Apt/w0Op10rOO+xp5DfgXOPY122Q==
X-Received: by 2002:adf:f245:: with SMTP id b5mr5260974wrp.288.1601046139272;
        Fri, 25 Sep 2020 08:02:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:428e:: with SMTP id k14ls1170362wrq.0.gmail; Fri, 25 Sep
 2020 08:02:18 -0700 (PDT)
X-Received: by 2002:adf:aa84:: with SMTP id h4mr5168129wrc.426.1601046138271;
        Fri, 25 Sep 2020 08:02:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046138; cv=none;
        d=google.com; s=arc-20160816;
        b=LPPAs/UJKE7LyUfzHNqgjMTs7LDeZL+/ystPm/eKmC+LKScU43A+iR4v6NPmaQvJSh
         gbUbyx5eWncXqpVtdLVL8Jzvx7wHu5Xp1QdzOr91Tp7FelJIxqc0aZfwLD9kSI8sb5xx
         oF2s//S8dhgCq2nOE1ypoeHXBqAXT7TD9ZbSqpvDgICMcZGe9KMUGuS/2x1zUwph/61i
         dQIfS3uToCrL2EvzcFN0HtmjoSIUnBvjV28jT0Nfg6hIjKSKRucZjkEDrBMiPf2r86V3
         fUUigNdjju1v7JDOJYIus269cV1rg2j4ojCytsXXTE5M7uHf/SZN5qfj/Y78ZNZ0rGa6
         CVmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rr9ugwicd2pVPhnibopR8/HmHoyHKpwg4xIXK9dvM8k=;
        b=hShytSdKsvwMxRD0hZuZd26PAgbjKXzbg7uqLuI2blD5rCzVAA+0Q0GrDhXYzuYryQ
         L4NZS66nGg+i5nnt7LgfwEhSrx3SDUTFfkk5lXzbHEEAWODH8LsDm2P5w6Qfs4GJwsYp
         aXf1km4KVbimnVYhrct5ElXd2bMkxX/8d3V4PoJzG0UYbYqZFZovw1nMdMl1a8HgnBrU
         OtC1IqSTNVLJys//0VQv1tdBIpOcPK5C2VIyJKUooNjsUCupeGJGEu1E0WjFee8EfHPS
         yhJ/52tukACHdSYed3+wi8UO3afClIj4QWoDD5VVUffkOuxudtXSYKs6oLYtS+aSlYTD
         n89A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id s79si65377wme.2.2020.09.25.08.02.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id F1C89B04F;
	Fri, 25 Sep 2020 15:02:17 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Ilya Dryomov <idryomov@gmail.com>,
	Jeff Layton <jlayton@kernel.org>
Subject: [PATCH v8 7/7] libceph: use sendpage_ok() in ceph_tcp_sendpage()
Date: Fri, 25 Sep 2020 23:01:19 +0800
Message-Id: <20200925150119.112016-8-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925150119.112016-1-colyli@suse.de>
References: <20200925150119.112016-1-colyli@suse.de>
MIME-Version: 1.0
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

In libceph, ceph_tcp_sendpage() does the following checks before handle
the page by network layer's zero copy sendpage method,
	if (page_count(page) >= 1 && !PageSlab(page))

This check is exactly what sendpage_ok() does. This patch replace the
open coded checks by sendpage_ok() as a code cleanup.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Ilya Dryomov <idryomov@gmail.com>
Cc: Jeff Layton <jlayton@kernel.org>
---
 net/ceph/messenger.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/ceph/messenger.c b/net/ceph/messenger.c
index bdfd66ba3843..d4d7a0e52491 100644
--- a/net/ceph/messenger.c
+++ b/net/ceph/messenger.c
@@ -575,7 +575,7 @@ static int ceph_tcp_sendpage(struct socket *sock, struct page *page,
 	 * coalescing neighboring slab objects into a single frag which
 	 * triggers one of hardened usercopy checks.
 	 */
-	if (page_count(page) >= 1 && !PageSlab(page))
+	if (sendpage_ok(page))
 		sendpage = sock->ops->sendpage;
 	else
 		sendpage = sock_no_sendpage;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925150119.112016-8-colyli%40suse.de.
