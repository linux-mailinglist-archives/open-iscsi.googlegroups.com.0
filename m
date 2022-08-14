Return-Path: <open-iscsi+bncBDTZTRGMXIFBBKVJ4SLQMGQEB3T7QCQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A13DC592088
	for <lists+open-iscsi@lfdr.de>; Sun, 14 Aug 2022 17:28:44 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id c25-20020a05600c0ad900b003a5ebad295asf114806wmr.5
        for <lists+open-iscsi@lfdr.de>; Sun, 14 Aug 2022 08:28:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660490924; cv=pass;
        d=google.com; s=arc-20160816;
        b=DsGtheRvBL1H3KGm3yPaM7UjfTF3eCK5WsVJaYE5R5GdmkqIvq3Yw4JHTHSKNv3+PA
         4gF0ogC+kwLA9lMfYdBldiQB4DKyIutyE5TYmNHwV+VzggkLB0RpkvEKFYElCeHgkJOM
         8KshcAaLAOtiyJ2E1xS20XHyDcqFDuPC7juJ1X1u9h6tvb3ELKNntkGN6yn29WGRf6gm
         e2sXb5rqg/WLYNzXA0BRy+GMfsl8XsQ4aN1WDdwxaFp5RaQ+6g6tWkh3o+K4+FkB+zN2
         vBmRw3dlGqoXs00vfDL6du8/V+R/mOI7nu0dEGFlk+bsqNlu6rgICGCHjfUo2QseJyYL
         jf5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=+zR+dqw8/byxdEBvS6Zu0Tyga8ivAVSjudS4243QNFY=;
        b=bka07K+QHQZJTw3yJ7H6m3eVebboppNq7EZBKdrGWqsV0xB3pP64BP6Nk4P8QTYQhh
         M5XVLjVXttAvIuUiq018yqBEstIFT0S9zdpyo8dNP8FHEFqdaxyWCSJp5WLuAfio1LGh
         LEj9G/smYcEI8WscNhU+mar3EMDjAaYxwyQj2eZft7deT4EiQwX0ZyV9kDmyPTbM1znD
         Kk2uOhRSe0eHQ4n6yO6+PT1YmS/Ht7v/7XaFTaDBmjs3ZaRAUBBGOxwpYMuY73f+A5jl
         cLczOyL7WhV0yrf02UxQgp17rK4I78/XRghUVIgj5Dgh8xrW4hwgqI0k3puVunyMnfVW
         TF7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="rY/r9Frv";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc;
        bh=+zR+dqw8/byxdEBvS6Zu0Tyga8ivAVSjudS4243QNFY=;
        b=cwFHYTX2HpJl9ZXy0Nv0/y9e6ETPvZyFyBIgCJ04hlIxQGoHUUFMXTN+nqFrYQiDhk
         u3Kns/KVdj4NnKlIgzlNuOYvs8+s0gLNJiTHmpdIdUofZQwR07q3u+SN3QcxbhRmYHpg
         aWNtouRi3zDShK2d3QaVpTL3vMIUQiOJCi4F2JJ6hqjrL1vsJdV1LKFcnD605yqu78M/
         veuQWch7MKVI2gzVUHx9R1vm0gVo2GcMbfvBFfBJgR0+SRoYZf/AdqC16+IhLyhqtm9e
         6gvjKIpiQWKyodtfu+zlRO8BxZksz+448KvCs/EhV3uLnANWuAloI2oGmjKcTVWzI/4U
         Kq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc;
        bh=+zR+dqw8/byxdEBvS6Zu0Tyga8ivAVSjudS4243QNFY=;
        b=En6IXv4kmWLFDVqhHviIiUcJdeDoOruzxtsNSD6KFn5nlQo1+VnAY80jHVLxgV0xJO
         +q7R0dK/NkKHcMyYUBPMEN5qdw0MBytrXi9aq40breZDCQ85StCTBYQOqC6g8BQ3VXB4
         1wa3uPgao76DkGdEIz8Lw57tpeXSvApOf6J4y2Zgf3JSB73zBFdt+2fRxaLOBhrlZzaO
         4Bkj1DXL4VUiLiFq5EryCfQrRdII9IMSue5+3MAfbOR/LPaQ+Ml2EcnOVvlj0raphzBq
         +0QFOtMH2UNX8lNFvnYAiBwgEjOmH4wYE65u6c6RLX4GO4ioaXkVj3BvRv4Vzmk3IWeU
         r0IA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo2SXNrSE2pWf3/qB5vDvfbdy0izSuqi9r5SzmZ/fYQUWvHCSgBl
	t07KQXKM3RzoZW6Mg7jeOvY=
X-Google-Smtp-Source: AA6agR4o+0n1qxHo4gddCygE+pl4oMDJIeBFXPCn6g3zdZI00Ig1Qn8QyOvGupsqySM0ZIqc71Hfwg==
X-Received: by 2002:adf:f911:0:b0:21e:c0f6:fd26 with SMTP id b17-20020adff911000000b0021ec0f6fd26mr6354680wrr.361.1660490923934;
        Sun, 14 Aug 2022 08:28:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:255:b0:21d:a0b5:24ab with SMTP id
 m21-20020a056000025500b0021da0b524abls12296850wrz.1.-pod-prod-gmail; Sun, 14
 Aug 2022 08:28:41 -0700 (PDT)
X-Received: by 2002:a5d:4804:0:b0:21f:bf7:83be with SMTP id l4-20020a5d4804000000b0021f0bf783bemr6708870wrq.94.1660490920993;
        Sun, 14 Aug 2022 08:28:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660490920; cv=none;
        d=google.com; s=arc-20160816;
        b=doFJ5HB+uFBojJApg/PWsZOu31+P8rKCpc4T8WRsaGwLJtnSKHwOVfPjhiOuChdYr4
         7YzW0PadV/kZzVeWfflJiiZUHqUTSn8a0VbX91SFn5og12b54/WMKeaSWvK07QKNKzmk
         9UiJ1zSxsbZVhd9nr64MNMhN3vIKHE4xGErVbe46HwVYjetFeUrpPmqZSG5tK1UoZAGL
         zD3mOk1eTanFLPNcVKo3Ljrhw4ZfbJZWAxrzW06ha8QC+CNNsqj/gn8EbvjX4isHR5XJ
         eKsV3CXOSAJg/RYgJVXjYgxzLA0+r1LFYRyLk9pae6yXVICgWJm5w5cwMO6wgkWutg2R
         1tBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5aRyD3PtdloBUTAoFKEPlxT38xa8KkBOfOe6je1Z9iY=;
        b=SysQNDH36QNppWMkqvIlocqWx184cV/gF5T/5u8mOCKi5dE5veZtJhf64sqdFY1/HE
         hvjE3eTaLa9Wu/hG46Y2ekpTqyc5mjFGARsa3NhXqVn+K2RLwu/YL7w17yu082kzzcTS
         5zT7afgCzwYHwKRNAzOVCrXtKctflYqY1Ghvri4JBw/KcOLfN6lxEC8j6LIW4Rbpy7n7
         vtcY4q/F3xooBv4ktJT7e3ESwis4YYRgBvwe8mCYIVUTZlCZVfCLAvUDAttIFlzD79Wl
         iu1MaR6cTq8cAlvByZu2NWbCEtOA/sR+tbxoHIm/DCmE3FteAQ1iHdMJhjrbKZdzNvQO
         jWzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="rY/r9Frv";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id 10-20020a05600c25ca00b003a5ce2af2c7si467592wml.1.2022.08.14.08.28.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Aug 2022 08:28:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id AC80EB80B78;
	Sun, 14 Aug 2022 15:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FD36C433D7;
	Sun, 14 Aug 2022 15:28:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Nilesh Javali <njavali@marvell.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.19 22/64] scsi: iscsi: Fix HW conn removal use after free
Date: Sun, 14 Aug 2022 11:23:55 -0400
Message-Id: <20220814152437.2374207-22-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220814152437.2374207-1-sashal@kernel.org>
References: <20220814152437.2374207-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="rY/r9Frv";       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit c577ab7ba5f3bf9062db8a58b6e89d4fe370447e ]

If qla4xxx doesn't remove the connection before the session, the iSCSI
class tries to remove the connection for it. We were doing a
iscsi_put_conn() in the iter function which is not needed and will result
in a use after free because iscsi_remove_conn() will free the connection.

Link: https://lore.kernel.org/r/20220616222738.5722-2-michael.christie@oracle.com
Tested-by: Nilesh Javali <njavali@marvell.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Nilesh Javali <njavali@marvell.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 5d21f07456c6..6e73f14b9749 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2143,8 +2143,6 @@ static int iscsi_iter_destroy_conn_fn(struct device *dev, void *data)
 		return 0;
 
 	iscsi_remove_conn(iscsi_dev_to_conn(dev));
-	iscsi_put_conn(iscsi_dev_to_conn(dev));
-
 	return 0;
 }
 
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220814152437.2374207-22-sashal%40kernel.org.
