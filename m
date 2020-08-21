Return-Path: <open-iscsi+bncBDTZTRGMXIFBBFPI774QKGQEE5P5W4A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD4C24DA43
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 18:19:35 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id b16sf1667578pfp.12
        for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 09:19:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598026774; cv=pass;
        d=google.com; s=arc-20160816;
        b=bCFayTcrQDBad2PdLSWLBu1zYPIz7Iv+WWquK+B/jgNUCNFliAaYkhLxU3WqGPzswG
         wt/Kkc7UviHEi/Q1hwEtpyI2BEieNo5jDv39g1j8rF7fCNtBZ/BV2C/xzTEIudlED37S
         aEGFmACGgezFJQ20GmMgun8aGhPMQA1R33uHi8k0b3QOWuANHBZhbn7mIhDBvnTF0MP0
         7QWNIYt1gnB2/MwIjQaYeoFpS3459J2cVbKDAPIRJh7kaapHYy0G7lrzIWG6StTbvej+
         3IdvFrCt/JqmKrWcOy6GVzK6CDsx2Ba66MFQh2dUIVnAewRWDrfNtJjS3Wk7W7eViPYy
         V2Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Z1I+3Jsnsooi0TKk3eI4AruV8ev/icCOzxa62lG8CqI=;
        b=fRlTTj2GfoTGZLmRPQnsj9dAcdLTNXJUMRB5Zb5vyjwOirxj1WQZaiFv6Rd7AYdOSx
         RO6FQ9F7KdEjt6pm5MJHTLwTqU7kLW77TAyvPcnHqLDU8PCPrUR3KnPZKA3H76ygHkm5
         3mDW5W0jP750T6TJuR54QY+bcskGlib1Fbh1v/XD2hkmjwPHvoKRgVuaMaApksYGv8nU
         xcfbSNpcSuy91tGtNf7GY828jNmyQupfwZAA8+kvBTf+oX4KuhkPWZr/wO+emU18syvf
         t+5+/ywLoaWWzd4HfrOK7rpfKpBnw/6c21PJ8/f9/hUjo7eEhZ7CY/0LiHLPQau+is1h
         qBdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Pnhgau6h;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z1I+3Jsnsooi0TKk3eI4AruV8ev/icCOzxa62lG8CqI=;
        b=nENkL2y0rDBoDjOw1tn2x1B8vZvpI04HcMFeGjb4OiKugMwlH1KKPSmpXnsjmhJMNI
         r0im3OM5RETiQhoCvrwb6KGyjccM5ri+HAhewiEMJHlFMZ72yAvKE+5i0UYxkLCekfDj
         CbVug5IL3sMGRFZIorHEBd0aUiklCHpujwoBs3UCGQocgCKe/FIk6D9oHUhVxoXd78zS
         EiJsSpejE0Qd10Fd7wGhngDjhHLtiowxLLzIjURctlLWskUh9TzJc+vyETIP6P1w8Y2B
         o9XpmDD3iKIKEswXDb8RwpOWVVcWJxByf78i+zncbohuMR7GRh6kWP6bJcqVvCuS7ksm
         /07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z1I+3Jsnsooi0TKk3eI4AruV8ev/icCOzxa62lG8CqI=;
        b=nyozon2jTMT4FJjBjWWx4xlM2rETyV+Jmh7P1wVxWqBQQcjgdrnxFeFfzTcG2ftPP1
         UiGbG82MQ6U13EZPgV5aWyfGuIQUjz7yUuSQQqNlpKRE3VaNwwG2RUhAcOJZhm0U3h1W
         Na9JiWTFedRkMPKYQPAWu1mijE6QzurAjGXE24SDi5sfDdQIckcR6+IdGPfNQUBYGtO8
         ykkzzqli+dSEOLyNiKRzmteT1wYaS/103SMKfWzpdvQUP7CmT+QoQjiiqNS7bBOmRcQA
         Gc4UGKl9uUJFE8ALj5SGVYZvFMf0CrUdNOqNWrMtFbShvPHAe2sXZuOwkI6tylGNs8pL
         rfiQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM53289m+75jUBG3s5reFx49n35Ugg3eL0qcZ54GzpB1jLtDkgf52p
	cp3M+7MvKY8IEVfO1+1gWnQ=
X-Google-Smtp-Source: ABdhPJxxpIld9vIX03Bv1FKv5tOpSXFlDBU6qy8rCeJ338Ox8H0sYvl43JhRDRDr1BzqjejajzCwFA==
X-Received: by 2002:aa7:9e45:: with SMTP id z5mr3206089pfq.166.1598026773803;
        Fri, 21 Aug 2020 09:19:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:130a:: with SMTP id h10ls1073128pja.0.canary-gmail;
 Fri, 21 Aug 2020 09:19:33 -0700 (PDT)
X-Received: by 2002:a17:90b:1a89:: with SMTP id ng9mr3017403pjb.202.1598026773208;
        Fri, 21 Aug 2020 09:19:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598026773; cv=none;
        d=google.com; s=arc-20160816;
        b=QUuvvxsN3l7mEzYpj685hbvm8G20Qj2DfEozVqclSHBo6sszDotIbvz1mfeZHWlXVQ
         QxPlgEU4W91KE38L47DsAkxTSfW4sH44lEp5js87wQ6rVNHJY84tDFXoDYnasb9gT62P
         9bjSsGpZHmqZKwU1OpVo+baVT40ysOZ4mcbpjdHeOsmIE8AjhrkwwiNz9S4eph8CzOUG
         NXFFigDqcJI5pspiFKfmsuqfGxJ9z+jzo2njKpUU0Zk/EGdhQqlpB2H5ku0dAA98eQwZ
         WZtvhPEq4iJ+B/ynirXZRmHNn8fi7Ufr2J28d2kmQlaZit+7hrO8sv9lvJB+0UeJUmVQ
         IhSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lWwSuXz6d7syGTLPNZ3i0Kqo5jU1qx53Uih56TnQlbA=;
        b=Sya/sagGggYizS6plorPe++la08SfjexfMuflyYdOm1xebNVWPIFeWalIhOzyK3MFl
         BY47/jXGRTwYF+9Qq+pL490yg0AXMYhtKbkl9fr/H2miDOK0+ghgmslS0TbeMpO3CKqQ
         8K1lUwkd1H1Y+mXLNO75vS7ZlwJCnPCd9oV6G8hTI4UsMyGz32dN6X2PMKTWLz4lvRpu
         21cYNTLHmIMsdj6RWZJceOUadBxvutyq6Eo7szti0tC0E/+nnpUfDQPT5HTAGDFtzsz1
         e+Lh8pNM11BBVZb0MRcjR3066oN/xMa3w7OKA4X8xJomyIxQAZcCXCmSJfgx75uOWOYV
         EUaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Pnhgau6h;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t75si169839pfc.3.2020.08.21.09.19.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 09:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1E9D422CA0;
	Fri, 21 Aug 2020 16:19:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 27/30] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Fri, 21 Aug 2020 12:18:54 -0400
Message-Id: <20200821161857.348955-27-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821161857.348955-1-sashal@kernel.org>
References: <20200821161857.348955-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Pnhgau6h;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
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

From: Jing Xiangfeng <jingxiangfeng@huawei.com>

[ Upstream commit 68e12e5f61354eb42cfffbc20a693153fc39738e ]

If scsi_host_lookup() fails we will jump to put_host which may cause a
panic. Jump to exit_set_fnode instead.

Link: https://lore.kernel.org/r/20200615081226.183068-1-jingxiangfeng@huawei.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 9589015234693..c3170500a1a1d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3172,7 +3172,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.set_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_set_fnode;
 	}
 
 	idx = ev->u.set_flashnode.flashnode_idx;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200821161857.348955-27-sashal%40kernel.org.
