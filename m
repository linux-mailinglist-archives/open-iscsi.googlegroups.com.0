Return-Path: <open-iscsi+bncBDLPRE656MLBBK6J3P5QKGQERWA7NJQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E30D9280ED6
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:28:27 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id 26sf76755ljp.19
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:28:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627307; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+xoVSij6jEgyTEOdLiK2s9ec7GPGGJa7TWWkY4hTyw9gYVMwKexObFRBvt3pdcTSp
         v2Kpj2hlqYkJTnKfC7Z++qMDLx4ZGln+ZSc3Os1o+8lJyJJwPuiqygQQJvvEGQ8T2B6V
         VwDiXM0Rq+XeX3w/MgGvAPUR/v9WRjjQD/zNu6CvVc1/yvLAMeAK6OThDWBeypmPiT9J
         DVisqzpj//WBWNnoiEBt+eAfevIgBQgdPZX+ZTxON3r9MFVOnGSk7nMJhHlUu1WvQvwV
         4ucWOT0TbTlDy6i8V2b0kA/v8oY0bsqadaRTMiqIHujsuRLkhhUI3gTZanNDxBNaOwLS
         skyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=8n37xKbPK7VKeZhkZWgbrNgG3zEj0wWOfhJUg1AMBxo=;
        b=UWhaNaVMwghSFbfTfecm4WV1yD7gx4MHT/x5gtDqyX7VqmrG0LvS0LYspgNpCUJYwk
         83yTPJCWaBsHWF/owvcXwHIACvtY/CHppA6BF+Tu2xjN6WDAn1Nr9nAH/x1TXwo8hf+w
         yXs4I8a+gbel+P6an1A021RERSlFJTaZ1PB0WAPY6pglIpFQg+HhlTww3czbgGGzVNOr
         /+0QKX4wp32VeHdL9BzKXHGBFz8owep5v5IOS3YNPV6iA3cbOJfbP1XRDWOeIt0gXaWt
         eT/1qFHl4yWuEg7ABUqKsWY+2Oe5AZ8Ts26h7DRxdB/mIeXe0mROgCvPIYxvNqhgcAxO
         6keQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8n37xKbPK7VKeZhkZWgbrNgG3zEj0wWOfhJUg1AMBxo=;
        b=qYrosnr3Az9mXhCSx9t37Sy+V5KYL+1l2GLu/xEVBv9l6OGq1TeqEJ1I2MYhLLgQyh
         S1IiWwt0w3Y7SsIPspPuY/zG271IxBrAfCmVgySeAuOXTYpiJ1u4HkAK1/ujLKdRAJQC
         VTw0xEqQpXrKZv/E3+UR//GlksXh0INuVcFB2ZiwQpGBXJmMA9vbgHIXELNextOSoEus
         zD/WxYqrocrY9G2fTPmV0OrHYfz8/gcvpy4qABl9qosa5WvEz7DC4284CJ7B4XCsmK7D
         OhQtRrjy3UG8+4BMzS/uMtfpHgAtG8THi0tX5kWtG51/2lv61DHq6ksM/S9eX6qcKjE0
         faJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8n37xKbPK7VKeZhkZWgbrNgG3zEj0wWOfhJUg1AMBxo=;
        b=OQspb+OmHhpJ2kghexTcQR8tO2ME8Yky4UXSzb2k30CniPNXEp8H1VfV6/0/74KyUs
         3yw2zhOHWkr0/QT0mc7YIaOxSUWeV5+idrTYrtjCdqqM6Tmdc/z1xwO6I5N6Uwq0T88u
         X0Ti5QrdsM/Fpn17+siHO9LPbXCnv5Iw8yszhZG1/Q2j9A+9G5feHqEyLP9++Wl1Olbv
         0/0H6WK5kTtvVsOmoJx/StyQZUroT84TcIJGQZhQsV9ejyueI/CvFIR1ATXSd5PZz3mg
         KRBtgTcbTCZ2IuTRfg2G0xu5Bcz0jl12MqrRkRYRR4oSl2MOQLpCU5dd8t8xIljhIMtZ
         j83w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5307Qd3gCrB2MIYyA/dikJlyFW9W/GDpLgjm91VWzEl3SOxIC36T
	IQf/7xVrYi61XpWsTTKV9fI=
X-Google-Smtp-Source: ABdhPJzqZveAI4ZzxVaB6gY+hYSFPMwgQZb3T4Q1Dtr8q/468kez9FMlsw4lgIh4krYzmBUuiE8now==
X-Received: by 2002:a05:651c:104:: with SMTP id a4mr404700ljb.273.1601627307486;
        Fri, 02 Oct 2020 01:28:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls155111lff.0.gmail; Fri, 02 Oct
 2020 01:28:26 -0700 (PDT)
X-Received: by 2002:ac2:43ce:: with SMTP id u14mr442999lfl.508.1601627306621;
        Fri, 02 Oct 2020 01:28:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627306; cv=none;
        d=google.com; s=arc-20160816;
        b=d/IOMjsul1yeCLhFkWa+hCdL0pfYVEkRxNBRxoJ6tWuj+4Y+H7cBgQQaRydrw57vSn
         a61au+LE9ZzW9N7C6dyOizDKSaJX4sLGcWiTKIx2XpKZUorSQFd7H0mx9EfFbB8qV3ow
         MdzR9Yxxnx/ENfHOpVM4C1eXm/nV+vt1lt2sXsagnKBkgKaN3XPi/kDtniEz6HzYCLbO
         DaONZmSg7fsi5zQ/S/j8qbP16gzaf3ltP5FxBNG/Cc4Xrku9o48L/kop550DjIoVAvqf
         rkQcDynZH1hKkUFg8C2ALJbAF6ZD6A31KmwTX+uQocsHqXYkp5lSW+xTdnnEQ8q3XdK0
         5xRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=gK3itV9zYDQbxOF88qGlpL4MmQYqLwQH2CTqaXSy650=;
        b=O0GCYYP2aJbwSVTIlB3uRPqei0Gcbz039nhjwz+69Z5O8XziDadAyWCaZTqFWFm3Ok
         eBB/NazaDoSr6DiWQzg2OaYA18cvsAM9Sx7ZL2TmcZ7gSNwfxSdeZO9zhotwJpYRCrA6
         OoUB2JTkYvOzJhXCjwizhIZVlGNR2rXznPnpakroa+2BgE8N1Ef+wWiLlVfSTuwYtEwl
         qrAW2GBcVTlOAlad9vQiIzg4nut39Mu/qNf2ZwxTiH1sDvAUYDrPMUBYelexIbtsjAgB
         PZOtzdwfIV9IORGFEa21CRouuYdB2Mt6OpNhJbaeWiJCVEwR5E8kK+6SO0/dFd5aiSrD
         OJRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id d1si25455lfa.11.2020.10.02.01.28.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id EDB60AF4D;
	Fri,  2 Oct 2020 08:28:25 +0000 (UTC)
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
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH v10 5/7] drbd: code cleanup by using sendpage_ok() to check page for kernel_sendpage()
Date: Fri,  2 Oct 2020 16:27:32 +0800
Message-Id: <20201002082734.13925-6-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201002082734.13925-6-colyli%40suse.de.
