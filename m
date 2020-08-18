Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5172490EB
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id r12sf14346123qvx.20
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=PhdWfooJaj36tMYFw5gf1amzgpOwzEryF6n+w1cryhRTu8bPKGD6SdrOeh3mCR5WJ6
         7ynt3c4mnl7YZqlhcKjT9/maqAxChRB+PFTklR1niPycoUxb1vd6BpymzV90QvA2SCdX
         vGqW20vQ5sGH8MLVjLOQ9szJO80iYfX8zAPp80MEBrbHoKXSHcQPFLSxcI1EGdZh1mjl
         HNgikyakFFfNkmqvCInvc7IcYSmeVBg7uCTptrebrjRY6HVTndLcA9FZ/1f3lD7gZ4aS
         IFx6TlCSprAxMlYawWIDIByCtcu/q267oxijUj4/4Z9j14JIYUQG5g2IKtLGUhKREyx1
         RSaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=0CcYQqgc3IBrmP227L3inIqkGPfnWRFpCloKUVygGs4=;
        b=VkVyA6Qewfbz4DKjLvlzKlLexDtWsmpPtkrxkitoPBY4H20C4rG84jHNVYHPaxXwJ9
         7ikI4Bm4BZQli8pvrMlyfOIaHqP265+2VpdMHfO0wKt8Nbem79OdbGVMPMmOwlrye+Hq
         kvpzj6hPhdseZbn1tocfUncvNkp9FZsMpiIO4VhCPKWxDrEQezLGDh8CPe6IrBzLD0tr
         ua+haD7QbMVKGRibLfQVORxMDJYm8HqHkntciG/7LlOOzpYZ4GUwqQRTU1/yB092GPxG
         Rd1iZMThpDtyVDRgN7x7UWZlfc8R60QpOW2+V+C9Y7AkVFDX62dehonr1r0eryibXWfU
         vDAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0CcYQqgc3IBrmP227L3inIqkGPfnWRFpCloKUVygGs4=;
        b=KJNfoQh591QyVRcma9ccZ5xmjGSdnp91RZX+KJTnymVcFrhywoteFLdTDXzC2dRY5r
         YUCp1f7k9L2SDm2tloqvlVaRsiXCKEAaf09jB9f76JJ3FgQdFpGFes1cMmiR+l8GL4pk
         iXfUWl4YatHJw+F8933T9tajTpUjN3KI0ooIzqt6rCXcUdnFT2vY3+aRiJey1gWjeSgl
         N1/IcNz1S73MYey5rewWTLqS3uaU2tlNyFKMxKFbajr1ooAoRJmANu/cLcK3N9tMMmCR
         TE01klCV3nXzwjvkZlYgHxqYvYHGfSRhb7qq8aNON47nSTwdMAMGA4Mf+1New/SUhvzc
         0jSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0CcYQqgc3IBrmP227L3inIqkGPfnWRFpCloKUVygGs4=;
        b=rOZgsKmlCBUSprpF2+Iv+Uckmmro2wka9tjmdn4EfX9Y86CAeYRfZHuQaG/Y0eiAkE
         GcHc/AqueVgv/hWc8pvk2NyW28w17F7/T97YaT67zmfXyJ1sekcYIPN6lNDvaZarpSp0
         WFWImxKpYCD4AlGH6IUzhRB6hnoExtvAZslhUDa2ndq4GJaH6zafHmulHkxrYZUXE4oS
         D8eA4SKTIjgf7+ufaM3WwgfxJd4xNewWQrCmk3Hd1pn/9axcKlcfQh5c4V2EkMyFzaFA
         IiLLs5C/x1PoYggexTqA/1jLPo4zKa2hZLsUbDWfi8FKs21fi86lKbSFc9jnJ6XruS1K
         E/Ng==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532FVZWMfUPKJo+mpOYNyVSLjopyY+NIGihSRHzq9M+DBDOeIeB2
	fc5bEWcovw8kLh7I8ckxTLU=
X-Google-Smtp-Source: ABdhPJwoLuG6urbrkbFJokA+XLhKdGqzJ6l9u3mZjNpZKkP7Tl69lcrq/K4mTp5FOHNLBbWSWv4DfA==
X-Received: by 2002:ac8:7b51:: with SMTP id m17mr19753381qtu.80.1597790044848;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:5482:: with SMTP id q2ls5451940qvy.8.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:a0c:db03:: with SMTP id d3mr21557219qvk.186.1597790044682;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a37:a1d8:0:b029:ee:6155:69fd with SMTP id k207-20020a37a1d80000b02900ee615569fdmsqke;
        Tue, 18 Aug 2020 06:13:24 -0700 (PDT)
X-Received: by 2002:a05:651c:284:: with SMTP id b4mr9836779ljo.278.1597756403824;
        Tue, 18 Aug 2020 06:13:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597756403; cv=none;
        d=google.com; s=arc-20160816;
        b=Hw4H2AinCF+DN8xNTRtujPZLIaT6VjkFmCZFm17XvOxCX+EvUaYumR4RVnqzLCSiHC
         X8vwm6eRmdkBJ1wdySMSz0aYxyvlqgSlOZsdQLCrCfQls4WJoqU0+Bcjq4DCiUqzzAdS
         9B06Sa8ZfMBhyG9pffHB9A2DjKCUyGVTn/eQiifj6rnM2BegOW3oP0216mtiP0sLm3cA
         d+BwbkDUApBMPNxQzEOgkVKdu0EaMnf06Af+lvg4tU0yBAtIMn9OQ0uTfj4MsQAKDq/Z
         vs7ai8Qa+UfPYtwdHJE+uukgG+zVB+sjTSOuqT6wYD/KqgC/Ju1jr2YiDrFfSWBXc5SD
         NufA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=QFmotsCR5+/z8Ca0u8OffmpdOvDM+GimNzKjjFhI9J8=;
        b=FomgxzCOLp2SliiuviQwjRykKgcBgeHfvOAB9WWBVO8hOqK/HLmcdZC4DsJY0ckV8g
         VFYn35/qgO7HCwAJnOdX330SxbdboaaP/bHsHzYJGqz6A+Qc5YOAA0b4aTEbekzEvY9A
         y8XRMGhFtXiANA2p3TwYtgT1S4TkLI5j19/2mZ+QXWLhiaBEQPmcbRGf2/ZGG+71ut++
         sXGnqf9Ps49BR3Y6zxVpDTwFJc2JJPljoWA9rnnL7Fhvc8LUNAbi1fvNhWXI6V4VysgU
         t3EZrMk+TBNR5do3bJRrXHi6tcD+1W0a3u1N8ifI7Rvn5JQXeN8U9SDxzzVg7brJGFNW
         2GSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id c27si1121732ljn.3.2020.08.18.06.13.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 06:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id EE92EB178;
	Tue, 18 Aug 2020 13:13:48 +0000 (UTC)
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
Subject: [PATCH v7 3/6] tcp: use sendpage_ok() to detect misused .sendpage
Date: Tue, 18 Aug 2020 21:12:24 +0800
Message-Id: <20200818131227.37020-4-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818131227.37020-1-colyli@suse.de>
References: <20200818131227.37020-1-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818131227.37020-4-colyli%40suse.de.
