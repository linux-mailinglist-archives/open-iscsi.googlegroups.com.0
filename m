Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4572490F0
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:06 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id x18sf14117822qkb.16
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=dhSA49SvwSKsrWHpMRcbs1s+ev4ZCoMdqz6oulDn+O6fHxzCB+3oDFdADcsa3Omoqx
         WGlBnMaz1MfJ06qehmiCdImvMb/TlkIUaVcefus3H5vMyQvlnMWgow0LRnWgXYw92+Ff
         z5Mu5Rf16klFzjLBZ3C1rydcYP85S9F+IpgjoCTX1+dG6qUvOJKhpvktl/G3O9/Cm8nn
         BitY79R7xI4EsSP2/rBalqVefS7BaFItJc43xzq4sCdni7ifVaSHVpvxdA/JAyyZVGq1
         Bj8ZF8bBMPx1DpB6b0dNWjmD/6DbORIMmtsnrOB7HyBb46ZIekUZ4apG+fXgc2T4sfAP
         +Reg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=K5FXa8GIxbGgNv8DnSt6VJvfalodDkbwrwZ5lIV6CFY=;
        b=H4JQk4MWZNBxYIKKNXlDNXaAW5rNvXSvrReinIak2Z1Ee61cK0bLgN+n5jWXyZNFim
         bP3FXLN96VNlBLxDi9LRnc6ZERVEy7AU3HSq1QMCM7SBXxQeGNvIf2Gwz2nLLGyMQg1M
         MH1SVL+uuoViLSYCm3KyHlQ4MoAigvEB2vRITM7iYwjyBBWKOPMfK6ZIYT2oFMWj2/+7
         crUQk+eBCTE3a4KJF90U1Wr8oJavatakwLCGfbhYjC8PVCiAJs2gsWWaWcmc31GzmWDl
         LvqJxuCgf1dIgJBoIxpbD3LCd9Gf5dIRRlYz/PcybNrJY/v7QRQuB61TQcyqEZu68pOA
         84UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K5FXa8GIxbGgNv8DnSt6VJvfalodDkbwrwZ5lIV6CFY=;
        b=LnMAosu50M2+v5dujpQGYkrPgWkaQ/8QFuwA6tGmq78HEFENIDbQTAmUmU0Y8nW5mY
         DFs/N3M8O5WPZ4HcaGwV54omYALSM+Q6f66j0bz81K/0Z11NH2mmHw6kXZuJK2MpOV/9
         6blfKyblbDP2setEWR+PJ/+5plHwGhUJLMookyNj2np14g8ofLcnxPuFvNzgdE0p2+0A
         2V2bOj32Yei19c6IHvgTLjMuFxPnw363J1laoYPb226gpFFxibHgjd9IDNaPGEm9MjBo
         LUo9clsDHgIJTqAQ8G854KhaNzt8JTh+D6vUJEXSJycJsGPAcraunuJ7ebmfqsJ5243X
         mj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=K5FXa8GIxbGgNv8DnSt6VJvfalodDkbwrwZ5lIV6CFY=;
        b=smp/ukUlhp07Oe1rb9cNY94My1TlqJUb9Ab18jhfKZ2RI0aofshjHJjItXbB79/l/o
         k3j3DpMqo5eyjzRjw9hIvYPbGprG3p1Tbd0IpE43uh7jSunqHqxW4bvTWOZCpM2W9/1+
         q9LY3H+avYQdg+PyDx1mNzlP4HAk7uol0F4gQFUdVpDDEN3JWkYhIndNEMKuHoSLUbh6
         qdweT16jBoAeFW2tXTczQWVoJJ/o6ooQjCHEryCqnX+YlpSdksATBM73hpQHL+YayTxG
         DMc3e9u9bJkoFjqukNOAst6kaJQOtIJSqS74Dl6VF2CFTTe4GMB4GihW2/ma2WGLRXuk
         PMwg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530aDZC8WEF0knxRXsdkaGppUvR8s6UVxtv0MPNRXRszXyZK1/ci
	TBQKleNnHvCz4B8IwrWfHLM=
X-Google-Smtp-Source: ABdhPJwKitNVUnujkOpMumqDBoFjS91sqj4pDkk8bv0m9u8+/FX1Nj49rGW+OhVO578zzkhoDg0dDA==
X-Received: by 2002:ac8:44d5:: with SMTP id b21mr20812361qto.261.1597790044925;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:f408:: with SMTP id y8ls1320355qkl.6.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:a37:781:: with SMTP id 123mr19821367qkh.475.1597790044681;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a05:620a:385:b029:f1:b630:a9ab with SMTP id q5-20020a05620a0385b02900f1b630a9abmsqkm;
        Tue, 18 Aug 2020 06:13:28 -0700 (PDT)
X-Received: by 2002:a17:907:b0b:: with SMTP id h11mr21171576ejl.371.1597756407874;
        Tue, 18 Aug 2020 06:13:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597756407; cv=none;
        d=google.com; s=arc-20160816;
        b=jB43w6KrcUhUNgPeV0gPozxwwhi13z8Oi/ohFy5hllbELVL9LeGMvNVZw/QpLT1Dyf
         VWkzoVJvaveNZQ9W7fj8pWojoGEsCNxz0jVqTRbuJS0bWsWXsvw4D4Q7oG6pwaj4YUj7
         SrDmff8pTHI8cNwB1DN7G9avJbQV5SmaV9D7RM7swshifc63LbNNWugyvU8K5LbsZ2NA
         oycB1MfRvmqVsNSqIvf6zt4NC58+zsJRh2Z/hsdUSq9EYz+ueSSjCFaBbYBtcbIHazmu
         Y0VrUmnY6nzu7d3308NDNgD7CwgRZVHXkJhyHTUzDSammOXPa/3DxxklZ9K34MN3Gafq
         6zzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=imVCeMOuVSM/noEt+oYxb1vPfcc+hvoZ81CfP1uflDI=;
        b=Qdl7N2q0cxmPzkV+6kUKnsfo5AaaAu3BXTRfRZkwzzongwXxfcEvEFq/g+J7A19PtL
         6LNmYypMiDHntgKJeI4Ldj3vyGaEtn3SdM60U1mTqSXUfCZxv46JdNfHCCVhwNJFjBA0
         CA1eQVn6nc4CUUpEe1exZORwsb8ZyAoQkAU+giYD7iRyovceB1A+tRYh1vDwGrdogba8
         10sI2spPrtE91cKBUk0tMhqip3y6UyDV3+vxg8B5gSbhu57kK2Sq0AMTP2tG2K/3WEW5
         GkciUVwxCVas2wDAKpYM1INjfbhyTYXYGZzkDSzoKWnnZYtrOmMTH0BN4bnluW3HtU38
         kvFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id b6si831335edq.1.2020.08.18.06.13.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 06:13:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 427FFB17A;
	Tue, 18 Aug 2020 13:13:53 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH v7 4/6] drbd: code cleanup by using sendpage_ok() to check page for kernel_sendpage()
Date: Tue, 18 Aug 2020 21:12:25 +0800
Message-Id: <20200818131227.37020-5-colyli@suse.de>
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

In _drbd_send_page() a page is checked by following code before sending
it by kernel_sendpage(),
        (page_count(page) < 1) || PageSlab(page)
If the check is true, this page won't be send by kernel_sendpage() and
handled by sock_no_sendpage().

This kind of check is exactly what macro sendpage_ok() does, which is
introduced into include/linux/net.h to solve a similar send page issue
in nvme-tcp code.

This patch uses macro sendpage_ok() to replace the open coded checks to
page type and refcount in _drbd_send_page(), as a code cleanup.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Philipp Reisner <philipp.reisner@linbit.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/block/drbd/drbd_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/drbd/drbd_main.c b/drivers/block/drbd/drbd_main.c
index cb687ccdbd96..55dc0c91781e 100644
--- a/drivers/block/drbd/drbd_main.c
+++ b/drivers/block/drbd/drbd_main.c
@@ -1553,7 +1553,7 @@ static int _drbd_send_page(struct drbd_peer_device *peer_device, struct page *pa
 	 * put_page(); and would cause either a VM_BUG directly, or
 	 * __page_cache_release a page that would actually still be referenced
 	 * by someone, leading to some obscure delayed Oops somewhere else. */
-	if (drbd_disable_sendpage || (page_count(page) < 1) || PageSlab(page))
+	if (drbd_disable_sendpage || !sendpage_ok(page))
 		return _drbd_no_send_page(peer_device, page, offset, size, msg_flags);
 
 	msg_flags |= MSG_NOSIGNAL;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818131227.37020-5-colyli%40suse.de.
