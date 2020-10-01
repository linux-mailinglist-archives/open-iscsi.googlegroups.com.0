Return-Path: <open-iscsi+bncBDLPRE656MLBBV4W235QKGQEZNXNMEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2DD27FAB8
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 09:55:04 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id 23sf1540324lfy.15
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 00:55:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601538904; cv=pass;
        d=google.com; s=arc-20160816;
        b=MZniRZicNXevM7CAbjcL0KccZi5E4F601AD4PkmgVwCiDBNXBYf5tN/3mHL4ag++ax
         MF9j6aSCGCIQphL4F5xXUW0NmuxHsRMK25cDMerr8itS2K7tIKchu4O4/ig2trpbjTEm
         lmaBlNEvwL499NFHSEwDCWDUBkMwLXU2V0FR6qYgKT4dBltS7P4AB8GTDnb1Mt0wZZ3b
         ncLsmFaldvgzKw5BTjbFEv2ZV+LVPXRTXULriPyaGdXvZ/F2fDrjmiYNAbVKpgre4LWf
         k7i2W9p/2urAk0amMRXz0EsIPhXCEZO5eO2F3N/033w6i7K9FcZIBzJOzY0Sn4AYIJjQ
         ddOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=OMDd1GPhjfbL1prC866F8xdBuA+ja3fhLgb2R6mKdkk=;
        b=PUh/j0jXWDdslowUbXGhg9n09Ho1pMifAWqzRUvqtLwQRNYXZ791CreU288vcGqu+V
         tsR6XUDHFHWQVGiwDubZizbAnJIrD82Pq0iAUQPJSt2NAIHfKgcRhmpqbFP6uh8wttA/
         iYZ0l4REowDC5qtHlacshQh989X8q6X5G6+EGgQ/o/XOcWmYlZxcfE3f8BYHBzQIQAou
         Gf0+hIRh47+dsgLAEqXu124AaO3Kli7zFmmkiSuAdYEb9TsI6kYCRNLaTI0QWUNCMw47
         UecoVy/HES/gXZF9oMQCn8/srBs53xd4eLVctAZMO7TvvnjAIxHFYemIyX9dVuJnYiBZ
         ib+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OMDd1GPhjfbL1prC866F8xdBuA+ja3fhLgb2R6mKdkk=;
        b=jAS0+F2jsmz49DDIJAmJHLBtpmye8W6BKFcDnGR2g2wshPvKgz4rmDco+0w1+h68mz
         rVa+PeI90QNd2iczrQg5IyMkgr8NEDwV3oU7xa2nZe0WbGrIYAsjVXe+EgjxXJL/Z/Sr
         gWQG2LiD+RMi2+vAqmYmPAefqIsmGx0FBKv8QFJHGXrquPSIg6shxexChPiCBJS6pzSi
         nOlnNpic72c0TVZfbujwq8A3f5Fa5cbL6JOPqys80xFhF85MoVTzyh/16Z41oyUkn5Yc
         Bei09MfBWFDLbruya5Rqpljcb/vO73W+IhqgRJHM/b3vOo8wcp4FCLFXbO5+ABXVjV2O
         ckhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OMDd1GPhjfbL1prC866F8xdBuA+ja3fhLgb2R6mKdkk=;
        b=kFwVi8bC8aog6ZEFAuh45eJBaZffEJ5FyZ96eGtycvJ+LPpQXWUnqPGCUAmGWKFmPg
         71ntZH4StB2Azou4qC4MPSmYHhWpWZGberchG8EX9dFsYjjIh+9juLtwXgnV+ztiNKCW
         QOVEGYnHJsbhLwlJIghizI/careZzhlaJbk0xqs/pvCy0WP+flLHGPS97KfpMaB2e2lo
         kUZcOwNGNb1r8IDM+JilY/g/OoG5vM0LiOBx7kfDOs4NohOqmzqZY2FHRWPXIFjnxbbI
         kIpfXVtyJznXcAByNBkYEhvsXiQ4oS1cPLDHax7J4yCDSIXXS+PLMPHcZjFaYFTjQOqu
         E6zQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531O1uAEDlPx1OON2bt02eqM3IDUqZnC8p9Dkq1DZmEeQxAcHtit
	edyR42ErgxGz15MgjiMs4Fo=
X-Google-Smtp-Source: ABdhPJxohIVfAAkRx4dwYnDn0NXfSY8NTmL18nQPhR+MmlsIMR7gsbxsTHKI6DFahOG45pvEjSVegA==
X-Received: by 2002:a2e:8115:: with SMTP id d21mr2109803ljg.16.1601538903814;
        Thu, 01 Oct 2020 00:55:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5c44:: with SMTP id s4ls436911lfp.3.gmail; Thu, 01 Oct
 2020 00:55:02 -0700 (PDT)
X-Received: by 2002:a19:c20b:: with SMTP id l11mr2477705lfc.438.1601538902798;
        Thu, 01 Oct 2020 00:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601538902; cv=none;
        d=google.com; s=arc-20160816;
        b=NMN9jxeogDSIw+1pruuv5orJUOywKUgazu448ojxjqRUeSopkyKsvM8oyCvPk0x9TY
         +eHAw8I0kidx51IktF88X0lgG3Rp5SqQXs8j3XfvSJfQsDGffmVtfjii9FK+RTrb2wH5
         fDIslobqYSjtDHokgwDwK3nzYQl0J7YEkX5wbwozw5y7q+xgWIPWS+F1o7f1VLG+mLzO
         5Z6UHEilY1xNlrmTYl+UVgK57N26eX0JWxzxQ/Nc2oikW/sHccDG5m0IWjtg9b4+UYpj
         bADVufNfIwzG8hFA3tgpcqsEdI08kg7nbyD1A7kGn4iyegC8ZQiXTiFLYYYdSAtPlOIw
         pxxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=gK3itV9zYDQbxOF88qGlpL4MmQYqLwQH2CTqaXSy650=;
        b=x697w5ImY3VlkHQTtueX6bvD7XeWogdeQ1dICegJTvutzOpgz5+r228o9bJf12opFq
         XvjeoXQtVxztsIOosnQ4ar11xVFvzXkev3qHApA3wn42HseXNOPBHyfMfCQwjyfygM4C
         dtrVf7x7IqlJ2MPrEHezTOwfr7skbVg+Secv9sMpQfbWdgEPV3ddEECYETYJ/K+mbyi1
         x/flQwfPQGAaHzgWOJQ7dtt+ZLUyttpOtfXyTbfHx3/hK8ZH0CwScbyxMaoCMl5aOaIL
         YAi4xeL7KPB9HWbJo94PBDNYUpDiaqYO+b9W8BMlmaDmS9PK3u5f8rdnsXCCK2SPNG2U
         kHwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id j75si138734lfj.5.2020.10.01.00.55.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:55:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 27327AD03;
	Thu,  1 Oct 2020 07:55:02 +0000 (UTC)
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
Subject: [PATCH v9 5/7] drbd: code cleanup by using sendpage_ok() to check page for kernel_sendpage()
Date: Thu,  1 Oct 2020 15:54:06 +0800
Message-Id: <20201001075408.25508-6-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201001075408.25508-1-colyli@suse.de>
References: <20201001075408.25508-1-colyli@suse.de>
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
index 04b6bde9419d..573dbf6f0c31 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201001075408.25508-6-colyli%40suse.de.
