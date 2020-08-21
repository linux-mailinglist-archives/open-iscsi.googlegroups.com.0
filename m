Return-Path: <open-iscsi+bncBDTZTRGMXIFBBOXI774QKGQE7L5AQEY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6604B24DA5B
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 18:20:11 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id a19sf804828oic.7
        for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 09:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598026810; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2cKP79xXSJjUouvPLoroXBjMPSPjAMn2XYL73frKdYonE3ykBRYthCnfQTcGujAyy
         yF7uEaLua4TmIRtLlVy812z4OKTeFLHtwCgrxubJQyk4QQrzyHmxWiw3dlU9bRV+BWbf
         hb2qXInum20T41WHNjhYtmdZA92LGOKMfHJupA4QNJkePHg1e6l5N6fOdUpkwg4P/UVG
         gFocTugMJjjVPq/54RMUBQJF9WbOhpMu6G/sij0Ls2FgrqKHMU6pSPteyxy6hVRv4vKs
         FiZhG7AtBsqbTQnTE6wbh2pFbhOxSMfAqthWnIDrxwDNx1eE8Me5+tWewhOXGxDq/S8Y
         YcRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=rPDQuPIcsPlHz+fO/KPqRkZ30J5W0POu7rvq4+QgnZg=;
        b=oliJ3SD1mkfX5evlvrMKoDbeGL625s3tD+zeKvFDUK3EuX48PGVBa/o589a4AzYFw/
         0/8Xgn2SUQjkQu3x0We10spR6HnsEVnSTCS3/rBuRbGayY6eGNDctEIUl5J3k0Zcnurb
         8tVzDRBSl6N7VuyyLkq+Y81GVkX126Hld/gdi9Jp+P9g5JmuriYcSahLgk86FldGOJ6Q
         7PG315wpSyVGn0qSjyMRLgMn9KhyrNVRLQGVERGm+VcQNUpNRy+ZSgLCYL7z920fv74j
         uIlrLiRU3ByzLECM0YaKmZMexw6rqx/yf5iBTMmq0KXRou6kYHOeAABL7QsQqXbLVObR
         nnrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p0eGstn2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rPDQuPIcsPlHz+fO/KPqRkZ30J5W0POu7rvq4+QgnZg=;
        b=Ir0VRnyf/KW/C0QbWGTdn0cDkaQt2tUNsJsViBdljrWVTGV/oyNh3mpawmZT/fxQ7f
         wj7vHNCv+GcBcOYiUMAm4WobhdSP5IPSWoU/V/GL6sup4c/TzDZyMMMzoS02BrGV755u
         H2MxgViZaFN/MhRWdRJTAhCQfOW5/oiNP7460891R5u3wT/ITPFKr+NQyXUrOJ6oGZ3J
         5irnPMABMkiM5plPzuY1yUh99bec40CUpcPqVvtxydRMPk9N3007XTmQamMM2y9zIjGN
         cPcD4En/tup/IQlzmraC8wX9ELMjw22yFDNM0bcxYQ5+RG4UWjSusHiVi3SptO9GnaJY
         lCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rPDQuPIcsPlHz+fO/KPqRkZ30J5W0POu7rvq4+QgnZg=;
        b=WqmoxUs+fbQYdqPkoA2L3r9DluYJy8NFXO54jsAj53M+zEGWMyRnUtoxTjBn0hKg2x
         zzgBWicMrq816e+14rfQOP+108S3xVBEkEKS0dVtYCqwGW9QOFNMASymllEbiFuS5lyJ
         nbC4UkVLBYvNymMlsuoMuvgj7zFbRPxpgItbKncE3LZ1+jobjyvdHCQl5HtISWhHu/Gm
         FsjEXHy0rqgMghhXoJwALUJOqIrHGBFOboR5rQsHVTg+lK3VtIoNFNqwVpUbWtHPpKOq
         LGpBiwpqj6RkDsaSVBIMFsXCfZQvi8wpNqp74XsyIPIzmbgLp2BM/lLoja0Zjtn8A6FN
         QQ5Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531vWRN3Ng/jLDyXgxdRoG1T9HXOfp+HryDDP2mk/eyL8Aq445Ho
	vpymN6y9AMreVrNloTBP2GQ=
X-Google-Smtp-Source: ABdhPJycDpdQroOfb+eGzKTqEjfOCY1K4/tBGOrWFabWJ50Fj6kRK9sNpdHe0kuw38RWaQdfkDQKGw==
X-Received: by 2002:aca:31d8:: with SMTP id x207mr2164631oix.24.1598026810338;
        Fri, 21 Aug 2020 09:20:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:1c78:: with SMTP id s24ls580195otg.9.gmail; Fri, 21
 Aug 2020 09:20:10 -0700 (PDT)
X-Received: by 2002:a9d:172:: with SMTP id 105mr2491723otu.165.1598026810010;
        Fri, 21 Aug 2020 09:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598026810; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQqBn2V7cDJttlxTARynaDCB/8HgrBuVE7Mwe9HRKZPH/rNDL68+rseUpPVOcTdlQ7
         LvZJ8TFNmgsln7BdCG31gXbGuCj3+UM+DiBU0jmmg0CpbVFrnKW/LjlJ3Z+5r0GNLeQk
         AQq4IqpXTPAw2D+/ve4JNkEeNIit1L7VwbsgS8gvVG5nhFLWDg8Yg94B5cMIlOQkHZng
         LGU1Di3caM/eF2Sq7KFZqrlR5LTsxgs1Tg+eOSy2LRbMjF+ArIRUi7cGvaYNsz+pmlkP
         yQwADh5dXru2ifnA2gQj4OWV+wO0PvDOcn+bFyYwDEn5BE0Oydu6WMiCYDq3TORZp1w9
         bVaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pAZaVpMlpkSpZTQ5XEzMMkYZQBjLNp2kHYKWv2m/KCc=;
        b=sG2Fj3ov0N502UJjVrZRQXBFnwHBtJEUgmI8KihHTPTW29PfxmOE/S1LMgMKWyNvSV
         gxuacpVnr3vdoH66OImhIPYAGnd/Ax7fYCGrkL/NlhV5GwHS7SrKrcKjBXVkZyOs0Qyi
         hZ42jW6ymTHIcsxr0Gt3hZJUf1OA8OuI+ONF0r1WLV+6DHknFTlqkHGiNQsp43JTrLaq
         Lr/mrDkjDkqvL5KtImbBvp3wkpN/JwtHnenmBDbmoIM6yeHDgUrcG/f3px+kzPK22VY+
         xgynqPslYqWAH45htYSgS6rfG5Q9xbYMHmOn3S0saQ7+hJqz5ybmXkyMYBRt62f1JMP/
         qsEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p0eGstn2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 22si114703oiy.5.2020.08.21.09.20.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 09:20:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51AAD22CB1;
	Fri, 21 Aug 2020 16:20:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 23/26] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Fri, 21 Aug 2020 12:19:34 -0400
Message-Id: <20200821161938.349246-23-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821161938.349246-1-sashal@kernel.org>
References: <20200821161938.349246-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=p0eGstn2;       spf=pass
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
index 42b97f1196232..c2bce3f6eaace 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3191,7 +3191,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200821161938.349246-23-sashal%40kernel.org.
