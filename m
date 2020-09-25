Return-Path: <open-iscsi+bncBDLPRE656MLBB3EMXD5QKGQELQLAKJI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id E15D3278BB6
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:02:04 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id f22sf1131587ljh.0
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:02:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601046124; cv=pass;
        d=google.com; s=arc-20160816;
        b=ygcigVu4YT3DkatnfXu79WsxJXXj2ZC8XrHpmGSbsac/vL+Ox13uiqNVru0+zqofuH
         ygG/Msv1sgAtyKBj8kGEAJcLSqs6yfn8phhswkkSh/RF98zp472vhUrnT5q1Ex5/RNyi
         SA7qoPBvd7iuXX0CkhivkV55CciQ5nyZlOYVO2WcHaDutj8Vkaaf4jw9Fv4ecSv9Waom
         UmLdKGaceXy7xHZ2C5ceJiGUiCvswsKMxV9wdYf6oymvlY+9CjxbEW6P5KgASqX/wQwp
         z2naGGrdNVS760i3cP3ubNo9Z0mDg1G9khL9f6jnWRYEc0qQvrMkTG2uPdC1fEMlIVBH
         2bOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=wsdgNXCZEDgy/zz18KmEqy1iPSZ0Mp+fFxgxaXN1EX0=;
        b=02I6koArqVQIKIaMz3p4O0RG6sa/MDNvYjK7RZX5WwUTMElWyU+Etu7UcIh7d+7Yer
         TF0e6laA8w1kddp8/+ldR1YLBYWwLvktJIfUeN/XTpf5u6VIbRCFDp5XYtAE+LwD0mf4
         ADgx3j7u7iNoKa5lSiYhHWHpvflZ/jlj7d1dxMurCPLvyNfFO6yFpRXTWtiug2OZNKwB
         LBWmtLDnql4eOg92YhWCQbl9qiqlRKa8tPXDlbZoKJRH6Z+76FNP6J4H7RnPQY9VwJoQ
         PDcklIbmk1t2y9xzdKVvuDREVbrwCxp0kudH3cx/E7Mg8hzHMyVAgAr8sNbu+r9j4d4I
         xnOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wsdgNXCZEDgy/zz18KmEqy1iPSZ0Mp+fFxgxaXN1EX0=;
        b=U/JzJ7StQvrj/krfu8OkYA+KZFRFlptFFhMQpxdShpT5MLCdCdfITIL9oRTPt3iby7
         HopmsstOoZWryIVkce7sW59AfD+E+cFcF/uNWn/mFzPAtZHmAlpRBpmtC87eZQSX9URY
         sRPL+BdOd4z1BZZ9WN1XVUtEJtsSkdQncdqVzAMDGYFpMiAc1x1PlJ8IGUGOyRwq5baI
         XN5jni1qgEdEymYUOkjTWVVDMCnLPZfeKKXX8VKuOxj4GEAxcW9FaX7KqgBju+5w+qPx
         okXhYRV9DeyUNcCCmY4EapzL5fvXAI9bxv2a5XBBl/Ghb/0Fglv47nl0hd13lGBNzEBQ
         O1hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wsdgNXCZEDgy/zz18KmEqy1iPSZ0Mp+fFxgxaXN1EX0=;
        b=kTRyrjSXcEXCRvvB/TyV00TCSkGn03vcHwWtvbf2BLFksbuQraaiIRK1B/jOgTrYr5
         +oq838h4gtac3W5O26UYh535hjzMvMVJC+QGcDEzSnvai+qmbWlbvkYi0oZlhF4yQk1w
         c5+DgwATg4mIOFMVnnMaDts7tjYXyN8kAXvSBIIFEieVn/F5BmhFu0etOxKk2BONTapE
         nobIz5PBGC0AQfN+EhPtFdYkYTKYwILr38lRLPK1sUZd/2tChisKB0ndEDx8dtYZNcNd
         cuff0BegiZfRfPKf2k9FGtAekVlWO0IAXbsuXGqSKFQ2Z+cSaefzUZoTTJozTlj1ScJ+
         dx9g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM53024l9O7A3+oaHsJI5tXBxeybnRbLF8fA4sM9VVO2XLBK+gZBvR
	Ip+/gWNwvbzmufUpvfPaVok=
X-Google-Smtp-Source: ABdhPJyGAtDDv8KHSJXSm8SUo8gfRL2Afp3KHOQqg9gqemWKA1J21uwNY7CLPwJy+Wi67Fp5nQWr1A==
X-Received: by 2002:a19:4846:: with SMTP id v67mr1637624lfa.345.1601046124482;
        Fri, 25 Sep 2020 08:02:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:7c08:: with SMTP id x8ls435953ljc.6.gmail; Fri, 25 Sep
 2020 08:02:03 -0700 (PDT)
X-Received: by 2002:a2e:8798:: with SMTP id n24mr1410504lji.373.1601046123558;
        Fri, 25 Sep 2020 08:02:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046123; cv=none;
        d=google.com; s=arc-20160816;
        b=HKL0ZjE+/sa3u9VohLp8zA4mzJA14aywT7f51cCT4HctVtMCEi07uznCMtuP7K3Iz/
         +fNY0aGr4oFirIB6lI6QJ12yH99WqCUHAolttrHdAGk44d6edtogpYZ/05kDw2gs187c
         zthQo/QI9Y8fy//lcpYJ2a/27VxNFbJsN2FUlD0TSBiS43/R86DjiNaLzYP29rAV+2Nt
         eFjgRsonHKjaiFBRv+qNPmlCjjeRzbE+53b+J9osD+jPwAH821tvnagVLZ+6aMi1FMsq
         kqSuhM6xk1rLJHnW2hTMEGcFImBn+2UyIxF6jGOEAOQLdLIBNYKUjFzcGAFuMeIv4FPA
         DtJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=QFmotsCR5+/z8Ca0u8OffmpdOvDM+GimNzKjjFhI9J8=;
        b=NYEwG5/7SZmuULiwjhw31ifnpBMGENjbocodtqrbyvOeYfP6vyu2ReAJFDFSLifJhI
         j/oJLw6SOD4zVJatAh8SsNvHNV8Pkx66keFflvLlabtlovbdis0Bm2Nvuw2Q6g4Y/xgi
         1D7aafWzbR2mc8AELSMsByTCOO68uwwvc2QAIJQYKUdW1/Kucw3Srv90n3P8Tgzw9jzX
         bgxrPxiHyOjc0Y6OzwbNJIV6H/1TTsLMM0bWYjqE63FwIue6JTFYJcEnr3HG1+gAG972
         hyX5XtZ5xKKwcoTb5qgJfoHBd7sHiGwudpWQX7r/87Yv94osdy2vy25OR/VxBXqjf/EC
         H50A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id l82si58116lfd.13.2020.09.25.08.02.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id E9A8CB036;
	Fri, 25 Sep 2020 15:02:02 +0000 (UTC)
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
Subject: [PATCH v8 4/7] tcp: use sendpage_ok() to detect misused .sendpage
Date: Fri, 25 Sep 2020 23:01:16 +0800
Message-Id: <20200925150119.112016-5-colyli@suse.de>
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
index 31f3b858db81..2135ee7c806d 100644
--- a/net/ipv4/tcp.c
+++ b/net/ipv4/tcp.c
@@ -970,7 +970,8 @@ ssize_t do_tcp_sendpages(struct sock *sk, struct page *page, int offset,
 	long timeo = sock_sndtimeo(sk, flags & MSG_DONTWAIT);
 
 	if (IS_ENABLED(CONFIG_DEBUG_VM) &&
-	    WARN_ONCE(PageSlab(page), "page must not be a Slab one"))
+	    WARN_ONCE(!sendpage_ok(page),
+		      "page must not be a Slab one and have page_count > 0"))
 		return -EINVAL;
 
 	/* Wait for a connection to finish. One exception is TCP Fast Open
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925150119.112016-5-colyli%40suse.de.
