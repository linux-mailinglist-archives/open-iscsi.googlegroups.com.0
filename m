Return-Path: <open-iscsi+bncBDLPRE656MLBBJWJ3P5QKGQEDWD4TKA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EF2280ED0
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:28:23 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id m9sf291555lfr.11
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:28:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627302; cv=pass;
        d=google.com; s=arc-20160816;
        b=GNKwChZdz5xXAbQxnlZXXBzePCGt5BIgVdf/kwyYWvvf/kPP1bmMEGrth/O7rJjiJF
         uxYjsGDUGhoDHoE+a2jPAqjr2Ax/hYnBfOzUbr5x0CapcZRwtAZY4lJfDlgMym5+bbbU
         cytv2O8M2F+bSvcdNybb4ggvRtoygn9NoOBny/VrDvM9Xn43rsjMJIBcesKlVVqDGpKQ
         jzMi5g7ApXPIuxV8Utoes9Nj4KT+ofCvCZGUC/XaU5XdMbv+NI0M0wXpTPQYLC1d9p3R
         J7WZZXEToZL/Bc+G2kuk5JyAArw+R3NN5FQRsNm2cTPu7aBbZ32I7mGdWC4y7Tb8RkO5
         kyAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=V9yM0PnMcRXDq0cy1+vQOutK4pgj7QmeHtyTiwJe6DA=;
        b=u8g7NoigyxNFXud/C8rQe3fTKViDWlTgNS8EwwR2jBXA/QGcWQqqfOQona9+bGCLcO
         PuwSFtkp/T5wctu4sITd6mrOiejDipHHz5SHaIz43nkhHkBEkDS+uXxycpbxZMscpGWL
         R5u2KkwoTI7TCGsvI+IWSjROcQVVe59yUrMfd7wsB9Mu29AdZUYOblNDzNXe+IrkU4Hb
         vMG4wpEDAPn/GzWufxOIRjNZn8XEcgWCWQv8xTtfb/cU18PRELfJllOX9ymhu7brriYZ
         yJBl5gSlXRDOphIBsd5pixa+JcjN4v7sZV5K7NGhOggGHIsSW8xNtYVIxsjQ68TXMdJu
         lSlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V9yM0PnMcRXDq0cy1+vQOutK4pgj7QmeHtyTiwJe6DA=;
        b=FWPw+0pG3XOSf57Hn03JLOcrW2yJrOV3nmKK16HVphKANy66c4CN/cWNGiVB0pPM7b
         yaRG54vf818rwDSUOKowhCwP1fRs/V1XIpH3AyITGQr1+D4y4cVD6lgCpOPSqzvmWZgb
         dzzh+YZz/KR7YIjgPK/Ki7nc5dGbKHYYEjuaU5veSMUsU+beZnTB40V8TRqTvqV+LIOy
         zqXkx/FPnLF+3KzJnWNVB9etrou/bA0pEzT86gY4pjNKQlheFu93AhqrY7pRtTUwl9bC
         TZ2cgbwShAy9SlOky56wjpviN2gR+qidpb2y57iid8UJl0lw61VZDGZufNZX2gEr7svW
         M8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V9yM0PnMcRXDq0cy1+vQOutK4pgj7QmeHtyTiwJe6DA=;
        b=hSX+xsAs1aYjDsA8g9zP+Ik7JRIyXFomAPa2WNKK6lFGR/EFp+olZmlg88EdDTX0bN
         9oeLkWMCT6U79BxIFiGZLMPXst2FBD5ywugqY42nuw4+2nZndcJPWW1pcZBDkqzOsc7z
         LJE7UJZQLq+wFX0uqMC49CBbFBgInT8FsHFURjyeKHZeRzVNNKXuAoDuelaCXrZiIn19
         +MDu3IwkkgUbtv6cp7zYianyNNCxZ8l5jj0bKIMLBh+6dENtJ9HWNv8ciGYPHk4DT8vp
         fFKdjUSUURj8XUG4HZDcYWcn46zx5kCyZ/Z1Ltnj5dbswF2+nJEKre8kmC2/CQb9YbO/
         G+XQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532wAQJeeSkAMJkdOZ4kdCOCRsXjzpgLba9ukAcHLr9IyZQXdJCE
	z4oreTSN4Ps/y3l5iVnQdhg=
X-Google-Smtp-Source: ABdhPJy18QQuTqA1If4ix/kKWG8bxYAHFgfAaio67+3ZFf5AT4GRZ3O6kcVXfrscncGh5ZvvAUj8yQ==
X-Received: by 2002:a2e:5849:: with SMTP id x9mr417420ljd.194.1601627302590;
        Fri, 02 Oct 2020 01:28:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9bc6:: with SMTP id w6ls93461ljj.0.gmail; Fri, 02 Oct
 2020 01:28:21 -0700 (PDT)
X-Received: by 2002:a2e:b4ca:: with SMTP id r10mr406637ljm.452.1601627301405;
        Fri, 02 Oct 2020 01:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627301; cv=none;
        d=google.com; s=arc-20160816;
        b=SsEweDkUU2okkIJfR7hW6x6jDUZ6X9AdK/s7edEsvvIt572Epi4uxQpRfqz1pXfQfz
         9/KkKty9RsXQzVR7I5G0TN0v1QTF0R/VP1vM6hYj3Eyfu8s6KFxEkUp6LexSeUSfnXWm
         nO4PnQ4O79oE/Q70QRQVZet+fI8/NtIr0GIF6jGS9+a+MoCjXSiTVWnSiR+PacxzpZN2
         /I2HUN/03K1pLgamu0Towrg8DSCfE7770AxYh4tC8ZDV61EWttQH5q9OsPA3PZxKG4l1
         nvgwmHk5cdh8RuD51BT69TafAf6pVYtU5lXNJXJWEHsiABxsfT3/xN3gSFSMC3X6LLOs
         KH/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=QFmotsCR5+/z8Ca0u8OffmpdOvDM+GimNzKjjFhI9J8=;
        b=v3lmp89GenxpXgRS+Us5hIfFMJEE+VMJpDdpeGvaz+BWnpFZ3kPN8+avje3LSh88I+
         LQVG2gGAR8cGHpdLXB7ZC8grHCD1RfWj9wSE07nOzFgIJDNLKICCok7q3cgkSg41JSZT
         zZ5leH0B97wjtlGLzLqp1W+A1NniZzZIdH7zylm4YAhtHxsdXoHH7W7ASHRH0i38ZnBU
         5kG4m8YQtduddlWXFpAMaV5T02W4blI8u+er8EaTA6YP4k/uWpLJj4GOGQ2i5WqfbVJh
         aTAlpeuiMJPTw+/hdHcw+d8iUq+LP9Dajgc2SzrDk7oRSwlXouTALRGmUPeG+g64jkEW
         n54Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id j75si25341lfj.5.2020.10.02.01.28.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id B9D48AF1A;
	Fri,  2 Oct 2020 08:28:20 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: davem@davemloft.net,
	linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Eric Dumazet <eric.dumazet@gmail.com>,
	Vasily Averin <vvs@virtuozzo.com>,
	stable@vger.kernel.org
Subject: [PATCH v10 4/7] tcp: use sendpage_ok() to detect misused .sendpage
Date: Fri,  2 Oct 2020 16:27:31 +0800
Message-Id: <20201002082734.13925-5-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201002082734.13925-1-colyli@suse.de>
References: <20201002082734.13925-1-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201002082734.13925-5-colyli%40suse.de.
