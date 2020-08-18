Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BE62490EE
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id c191sf14189564qkb.4
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2pnWfukjjt5CoBmKftUJC1LA86qHQQGlBwWd39UjsfJH5+uYLDYv2l2/2GSwMTFKt
         N/lcPdd7W0S7rqChWX7o2nvqkLxBsxwoF3V9VxvjApWqL9GxmL7i7AYBbm7T6V67SwkY
         Mx3Z5O7ZuXljBhv7qIjmgw123FEH6Y+5E5jhW6kHDWV29CPnq5fnJ5BXHUtvp0vJAumH
         wJGQfk33kPVHzY3yVghMZOLkE99gZiTLfn/Zs4MCaBU2IAwYk1Lhh+agRBsPUF552gKI
         YiJFIGYp6BtqsjRUz5PfPj/XfE4B25d3P/lBiqWypJAFD+WAN0HqBBYlYhPSmP2GtQ3k
         n8hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=M63teiNx7UxPZmgEo0ajjTBU8UvfhDvKCahtMaNZEKg=;
        b=dz707ZIxsRPo8WZ8WcjyTvqsSzHk5q29fyNYql9uSywHQf4NXMcpmtNCH2D6oTVKgc
         Xrm/3r/ozbCeOh67YOtL/v0xWsRpB+LfLRqwKZirMHQICkKJ5DjZHj41d/C8+skHOmvT
         5JiPfNfWR8hB9lshDl3ghrksEEk2irsB7dQedOvzW00yHWOrswn2bTVSdEeoJOAukADI
         Tt7rV+832ANKW5CIX4+UGbHv/p3Huza6sPcwRlXwOX6CoObqiV0p98uVKkUIUKJq4jwp
         kBxBz+PDwCJOGuAWC4uHDw07gBvzmbWtLjd2CAvNPCTLIrAK6vEOTPnM022/CDwSHUvj
         KcQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M63teiNx7UxPZmgEo0ajjTBU8UvfhDvKCahtMaNZEKg=;
        b=GS4TLXOGrU3oq4iqiNghxSICrxjD1AhnYqmtllZN8lLEPUogM3zJ224SoXZ2RPW9n1
         fcx4A6GRQ/H+K8HgXjvOjj3MRkmsVywn7QAuyKlUoH+ABsfzOHMtg6JUBoRFrw0eyrfQ
         2pieQS43tgASLJ9uKhk/mlxrU5V4NXnIwLUbHKgDktor4Przn6og5FPpUlarayFsLurp
         vDTWNwm0RQxppMyYNRu1EZSar9OJ2lYpJbz4kXb4rh/bUWIf9wB5Ac8A5t8jePyaiUGa
         s5XmP+q/B6YuZl3XtgvO4zJ0Lk4nfJKy4cwJ3stDcx5cPGuvD/XwoU0CutYNY7X0tdQT
         J3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=M63teiNx7UxPZmgEo0ajjTBU8UvfhDvKCahtMaNZEKg=;
        b=YP1+aSxbrP1HxyGjnY3OK+XyHnHjxJ4wY/zT5P2e5candBgDYiSGBx8yGdtB3/ljZa
         j0OPwkD8/pWOzgih4LNQGdBLaKPm8LUUTrieRcjo5f+7k2Lot3i5QafkRslmy03NjI4C
         3IzdS+2CEI6CTX80g2561UZfi3KKn0b6pq4DLucqVBWqhAKEqX23i6B4BXDV0SrL0xO3
         b6x2Ea0fdR0XwUbyVHpxofIPUpA2DRZDhYceaNAr7Dy88hJGVmn3+VUdzPDcLZ6b51Tt
         VF5M2Tq2FeGEZNTE6LaFV6Ds3OC+PnMG++6cBlfRsBcbMSwIL0wJUQHayyCRTEUdEb0Q
         iNmA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5314QqLueb6nFElnYvsIwv1mqHUwk0x0vU9G5gq2AwiXLsKxMeFS
	/Nvgu/yDRXRCGuzuR0vNWV0=
X-Google-Smtp-Source: ABdhPJz5VFbG86pQz28vUp0Trr80V6ouX3P7Nk2wD1191J6tvW/RWrEZcJdjVUqFDBmwsCLKhcvA8A==
X-Received: by 2002:a05:620a:1243:: with SMTP id a3mr18900578qkl.423.1597790044916;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:b087:: with SMTP id z129ls1322845qke.0.gmail; Tue, 18
 Aug 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:a37:bd46:: with SMTP id n67mr19740007qkf.190.1597790044683;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a37:b11:0:b029:f9:71db:3eb4 with SMTP id 17-20020a370b110000b02900f971db3eb4msqkl;
        Tue, 18 Aug 2020 05:48:21 -0700 (PDT)
X-Received: by 2002:adf:cd8f:: with SMTP id q15mr21976029wrj.347.1597754901712;
        Tue, 18 Aug 2020 05:48:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597754901; cv=none;
        d=google.com; s=arc-20160816;
        b=s6RnsVEVEplrQyl8KpLs5AqnHGIGbXt252rVFZXuPqpGgEEnz3vIjPmVeohNlNXpIz
         IQiUkh3VMmb3OIeElYR1kHbVeyQzlBSNc1+6OEX/IL1AIUHxeefiDMt8HNRAdJDU2X38
         NpePpgFgceovIGLgeTU/RTOKJqL/qwXh/REaw+AkZwSGJaZlYX5RthaxVn4sHxMH7E/E
         Kgn8qVtdJwzACSe5h9ecDvo0yE0r97IDM5UK+sCicJ8bDesSthFUqKogx1S0eEnGcdnJ
         szoeuTN6rm/ntxEvltXaUAytVsaKpSedQKoVwZZ049zgal6tt74f9Jxk5J7fXvvoEdCO
         u2+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=imVCeMOuVSM/noEt+oYxb1vPfcc+hvoZ81CfP1uflDI=;
        b=J71IjycDmvwOXaXAImzsVZ241lzpHVywlgHuKQc0MudN4rdAFzCVFknWe8PNWclNFS
         nuNzr+FPgCeioATf2/oyEju5dpsWbBD2iMgBlanqZRi7+YhzfDDFOe1kFRiZ5l4E8278
         kRJ1emob79jdBhpnS4RfTHCMTH/o+UjLgkQYDhlkJw+xcdvGQX5zsL0AhUE7bQ2nh+X/
         be0oFG/QdSBaMmEDgywc+E5w0f/RKmBTFFvNfpc8zS2neBuANc1S5FBs1sjKt6nNCfXe
         /LDxt4cACScU09YJFumSOmsNP8nNDzoLGRxKyOVzFZOtOFMPlFd7KQkTc5wD5PGGaxjs
         zs5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id o134si582211wme.0.2020.08.18.05.48.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:48:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 1F62AADF2;
	Tue, 18 Aug 2020 12:48:47 +0000 (UTC)
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
Subject: [PATCH v6 4/6] drbd: code cleanup by using sendpage_ok() to check page for kernel_sendpage()
Date: Tue, 18 Aug 2020 20:47:34 +0800
Message-Id: <20200818124736.5790-5-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818124736.5790-5-colyli%40suse.de.
