Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9392490EA
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id r12sf14346127qvx.20
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=LLF4V4GJZrylV9V8aEf1jL9qSyzPKUcZfVmUNlwB7twVCsy5Ny24o8sZUHIu9sTt5Q
         fGemdQ66X14Lec/JF0iqkXjg1Ww41xI9FsLnpIVFhbsHxf85+jDWmj+6V7knuziDltul
         BcLQDBDMQkTtLZOfrcCrMAqw26KtOmmO4xUde4qnIdX4aDy8qT5Rtng7d4EDb7kOGmHR
         L0UsIPqKRFpcgy6YLW3AyXMbW94gfdOKQBgWh2zmXwU2cxHkQqEYBl9tpZ0Ipn0XZVBC
         YmM4aya6IrSPMh4RqJXU5awii8teybhOCI9JKbPTD6hx1xwPNagbyE4ueL6eL46Ny241
         /3XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=IxXJ7sFvYsXD4tQKuJCjlCZGrnr+aypYQoMOVyZJ4hM=;
        b=t9JlwQL/F0jo7BS9sWoBwZQa+afH0LbTmHCvnUFJKfH+FUCkpLudqasUictx82zV3P
         LOS3SFU800s+hxScD0AWVUYk2Tx8839KWTM9wkXjltOyg3pf+7CiJGdio3VemqZT3jYd
         2mIr0Ax9UTtNTzoZV5Oab1qSTfc5zeHme9BAH3ZvlJVjykJSPy3ZmG0JXG6iRDuLkV48
         zHPVdCX4TKLYuJR/2MDF3G4vHBAltCH2TR7EygJ7KqkHIkvEvDEGbOjpGUxb/mUVmo84
         yvPJw/JoMURtb4M2uKfJGk1eKg3oPccFSwSi5vZx/v8aV5uVnLad5/21BUywemIq6Q16
         hkBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IxXJ7sFvYsXD4tQKuJCjlCZGrnr+aypYQoMOVyZJ4hM=;
        b=j+Y5TaLltFkhkNQDA67yLw1nwoWAokud55nW91qPfFyQdTGpLw//zHQRk6FEeiysVZ
         bpt+/DDeuWPJBvjEmgGMLVfoZxlPF1JZK3lA41eRFqxa/TtYntCBs30BKBV8t/Md2yWs
         f7VukkaFR7646icTjdSTgoN3tNgJ1rlct5Afn+UmtT2TPD0u0oLPOgHGn1AtiN43lnVJ
         ZZs8esFnl/aeoQJWjMCPCk8WIKVMeQni69wUPfjhXNRVtE0cH12m/DxUZFL0zS8ZVsiK
         W3pnr1jQecuoHU8BD4TXwoRB6RGOALZLA4rUON5v/lF2yxQGwO2HHnMtKLIc94bA3r/7
         ZLNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IxXJ7sFvYsXD4tQKuJCjlCZGrnr+aypYQoMOVyZJ4hM=;
        b=l+4Oq78pEOgi0GeGatlvPj2f7KmqZLNmlA/9meHUOthAz2cZAoJ62aEv8rBMacy0Qb
         8A75Ly95ZjDNTbiCmv7Sa9s2eDTo0Wha0jrjW+6OX0V+cByDHTU03Ehr8mNlEjw+D3dX
         OfIUOZZ7vOsaIuL6gjeQiJ1cnnF4P4YwDIt1g4iclUvs8nCQmWDP12apljYZ6wjQpL8/
         j57KMz7t0ehkZY12/fhLz+7JfunbccNfV5U1Ys6QHj+ZHwMgmzWykGrwf20FiYHHkBo/
         YnD4O7goxO3n5wbaGDkGFjL6FNNbV+Hfdf5Rjx9MqTAzor2I0kuR3aVO1FJUr2KdyIdy
         NK4w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532eZNN+CP77iLXAX0B5Sk3GDojaxCGdHkJzlcMqDDhqrJp9Ud+e
	Fc9qI3N1bEQ9g3+bDs/Eaf0=
X-Google-Smtp-Source: ABdhPJxdrA3WNr/SMmxtZQPXT0eZIIi6TNAjbS4lgWOu62gfZrCxkTLGXtYXuqn+ZJ5oehhAtSKyUA==
X-Received: by 2002:a05:620a:13c9:: with SMTP id g9mr19622931qkl.436.1597790044870;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:346:: with SMTP id t6ls1317502qkm.1.gmail; Tue, 18
 Aug 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:ae9:f715:: with SMTP id s21mr19428528qkg.471.1597790044684;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a37:e40d:0:b029:fd:e523:7b6d with SMTP id y13-20020a37e40d0000b02900fde5237b6dmsqkf;
        Tue, 18 Aug 2020 05:48:17 -0700 (PDT)
X-Received: by 2002:adf:f248:: with SMTP id b8mr21259220wrp.247.1597754896714;
        Tue, 18 Aug 2020 05:48:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597754896; cv=none;
        d=google.com; s=arc-20160816;
        b=g3yE0QBdCLVOQxrCnAkx0c0gAFqyvOvR4Y9qWmOaHAOnyh7qw7f0IWxigkGxX5bDHf
         Ab1BZEfRywBUQ0hL/x3ey/s/TIw0L5ctA85FoWEAXbibrPs1xEJN2ONf6SC7xRXCTs5w
         Hc+fKsdyDx+o5E+8vyeLNvi/9Hh1/TqCsMcfTAa37c7pNH9BBIbViCFvsndGq1Fn2lz/
         cRzgly1ovDxzbx6o4SUMUalPunRO4YqV5vnFbaem7gfrIPjjNfVEcExAc3XylLROy/j1
         QJt3B69BXI7OHBWbLSTCR1Na0un1+fJ1RyFrLPBswma2zJb7+ZqFYKeDyMPlWqdS9GBL
         hvQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Wyvt44hY+5hH6wb2dkfdbh++ekQU5jdlGFdkN9OgVL8=;
        b=hlLSRh/Y4FeSV/BJ9kxSqqBGdA+X6gmKuvZDOujhCVbVYOUUA/EAcTfAPSykHTosho
         q8IdSXFVXbKoL/4AO5fYStiKLSALiaUtfgqtVtEDyLNdirPJO0YtC5vKafAl7az1iX0H
         MLzOcS6JeTsKOzgrT1Ozfw+nBMlTy9hISwjHhTWXyq3cbuxsqv3c3g05v/rs+EwtA8J3
         q8pWxLreOcG8QvDlfL2AAB9osMOpFIzzgGlC0Kf3g/zt31w6t8pSeUsAq1ua4qCF2BBi
         8wAnd9jD12izfp5ro52LrYCYOTVkbcWh9WKfKkVVXS9ku693OE8WliqptSMdb9qYpjoO
         Ga9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id w6si1215974wmk.2.2020.08.18.05.48.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:48:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 240E1ADF2;
	Tue, 18 Aug 2020 12:48:42 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Eric Dumazet <eric.dumazet@gmail.com>,
	Vasily Averin <vvs@virtuozzo.com>,
	"David S . Miller" <davem@davemloft.net>,
	stable@vger.kernel.org
Subject: [PATCH v6 3/6] tcp: use sendpage_ok() to detect misused .sendpage
Date: Tue, 18 Aug 2020 20:47:33 +0800
Message-Id: <20200818124736.5790-4-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818124736.5790-1-colyli@suse.de>
References: <20200818124736.5790-1-colyli@suse.de>
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
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

commit a10674bf2406 ("tcp: detecting the misuse of .sendpage for Slab
objects") adds the checks for Slab pages, but the pages don't have
page_count are still missing from the check.

Network layer's sendpage method is not designed to send page_count 0
pages neither, therefore both PageSlab() and page_count() should be
both checked for the sending page. This is exactly what sendpage_ok()
does.

This patch uses sendpage_ok() in do_tcp_sendpages() to detect misused
.sendpage, to make the code more robust.

Fixes: a10674bf2406 ("tcp: detecting the misuse of .sendpage for Slab objects")
Suggested-by: Eric Dumazet <eric.dumazet@gmail.com>
Signed-off-by: Coly Li <colyli@suse.de>
Cc: Vasily Averin <vvs@virtuozzo.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: stable@vger.kernel.org
---
 net/ipv4/tcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/ipv4/tcp.c b/net/ipv4/tcp.c
index 31f3b858db81..d96c7549895a 100644
--- a/net/ipv4/tcp.c
+++ b/net/ipv4/tcp.c
@@ -970,7 +970,8 @@ ssize_t do_tcp_sendpages(struct sock *sk, struct page *page, int offset,
 	long timeo = sock_sndtimeo(sk, flags & MSG_DONTWAIT);
 
 	if (IS_ENABLED(CONFIG_DEBUG_VM) &&
-	    WARN_ONCE(PageSlab(page), "page must not be a Slab one"))
+	    WARN_ONCE(!sendpage_ok(page)),
+		      "page must not be a Slab one and have page_count > 0")
 		return -EINVAL;
 
 	/* Wait for a connection to finish. One exception is TCP Fast Open
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818124736.5790-4-colyli%40suse.de.
