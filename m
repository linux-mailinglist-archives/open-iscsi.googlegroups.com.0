Return-Path: <open-iscsi+bncBDTZTRGMXIFBBRFK4SLQMGQE7ZIY3XI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F02C15920CE
	for <lists+open-iscsi@lfdr.de>; Sun, 14 Aug 2022 17:31:18 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id x19-20020a25e013000000b0067c0cedc96bsf4392917ybg.21
        for <lists+open-iscsi@lfdr.de>; Sun, 14 Aug 2022 08:31:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660491077; cv=pass;
        d=google.com; s=arc-20160816;
        b=RFR7sjdvCrzyrVuHLbBdE7/1IVyH38269tA5991K7/CcYHT/0o3yKD5mziglk0SHGS
         aZXOZKiuQaIyKh626EoS6yC1npZ2IQ7tBD39MuB0/NP0KU7Gjx2GrbYCefcFyEkmQO+g
         AdzunmD9wdlbXOOUUvuNnEM6XMtMjNZeBSSSsTRI1hzIvjwZE/MtyAL484BFBmEDeUUd
         6Kcu8p8b/x+AzQmJ7Uc34miRW2Xd7qGNKpMwFnmRo/dhaSLlzxON0SJ36CaIxHFI06+N
         1FN+bpJnw3+EDY8DiYJN/Z1TH0qVbuMvcwp9ErGDIABzHsEFQndEBkr5WC2VoP5DbVwI
         S9lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=apThGUHu8vp8iCC/4u60E9iNfqOMJ+eOSMc4SRiyDaY=;
        b=y+KEypqg1wP3KJXXfsLbukjDN4ahIvewehHHt0SPR6eWjsfMZb0iB2XPxBwgIskcvI
         g1gqIKfS/ISqYnaPcDFyPzgKW9yIjblVuT8E7PzZ0VjBJHnH4QP3vVzq46dYKD5RpVIX
         KxbhalkuFeCkyLkjBcCDchTZQdF/rOukQhVtdWAJ+Sf464d0gOfsw+T8eRFtwQY67Dha
         RRVSo63ZfqDGHBPSyVybYz9kgCtO+EFRr8Iy07rZz0+/5q3Y/de1ZKrP2nxUJgl+vt4N
         H7dpkogMzvz4ITG9kywnBwJgsYa5FiswD/8Us1tGOraS0smsMEdgirRpS5AtI2km9W3b
         3X4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="M9vn/6Wd";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc;
        bh=apThGUHu8vp8iCC/4u60E9iNfqOMJ+eOSMc4SRiyDaY=;
        b=rOysJrtUE0+hBspuAPd81EgDPKZF8BetG1qvUOTP1m6YLIYkQzlNww2rPZnHgBM29/
         RZQcRlggCa4dT3wkOdc0k20J3NApBhD/KHanUd7ApooHF1a9rrdBl+Xy9vp/XnRahHMp
         epPWuBKVdF3WNauhDfdmLEvEJNHL/jhsjrvbwPM6hyEDV1AygZOVOTIayAv3lTrBr04z
         xunpegNBGhgvW/w0+a9Zki1tqUmj1XZ/mlE+008f/MdUvcnl+2lV+ymP90Ok2zNae0Dk
         0M8Yo5zqDJ6BkdWz4RtO51/SmxBKN0Im7JCeb63+wMqcduqQCLazzDhFmE8ErulSYMKg
         /+wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc;
        bh=apThGUHu8vp8iCC/4u60E9iNfqOMJ+eOSMc4SRiyDaY=;
        b=dLd8iL1KHJB2vCGM5s8i1+WI4hqbR3Gei3VJgCW0Np/JKKaBpG+6bzbewW/0+rKOQm
         FgJ2H53I1oyMWFW7KutfXXWeCwhiqPb4GF0KqpPpDTtU41SrJXgynQ3RrdKt9zd8tuyN
         Sic6EdH9xHKeM/MupAUnmp/874rNy9d3L0y6m+NwOpuWpB5mY7OrLir+zbWcoOAooqWJ
         fIi206/4hjcrgeBLI3stwDOv+Onw/mYOKVXjCzM4YOgkTwnwA7qYB561oc1Z/u+r0XiI
         uZXWNc08RpJ174wXSkv6KcSI3BmSKKvK7eWzZLg7wurkkTJVM1tnmKJmykq886Zc2xNi
         rC6w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo3mnbNi3DYFt6N0J4sMrms1tMIMJhoQZWQJoT7UmPL5l2iBR5yy
	LvHEi3Ru+eGlrcLwK9ET41o=
X-Google-Smtp-Source: AA6agR6WoferxAgXhk2ynmdiWmjkEPBZV3VRNyeQOlo1n1+OmI2QSjh4zyswjjDwjJArrK5cE4Yf3Q==
X-Received: by 2002:a81:63c3:0:b0:323:ce27:4e4d with SMTP id x186-20020a8163c3000000b00323ce274e4dmr10462983ywb.472.1660491077576;
        Sun, 14 Aug 2022 08:31:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:1cc:0:b0:31e:dfc9:3ae7 with SMTP id 195-20020a8101cc000000b0031edfc93ae7ls4194596ywb.7.-pod-prod-gmail;
 Sun, 14 Aug 2022 08:31:15 -0700 (PDT)
X-Received: by 2002:a0d:df4e:0:b0:31f:56c7:ba0a with SMTP id i75-20020a0ddf4e000000b0031f56c7ba0amr10235932ywe.384.1660491075832;
        Sun, 14 Aug 2022 08:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660491075; cv=none;
        d=google.com; s=arc-20160816;
        b=qy2szVgti5DURS7klxZLvdxPak2dG0j2DBQEJF1K9HSgx5qrmW32z68u3hy6IdhOo+
         UczUMoEQkfGWhui/qcDrUaAx4XziRPlqgRvM9z0JNOB5WlWFya8W1/V9FK8b9SM+e/qv
         8RpZfC5kbgDJyn/1sAxKS3SlyNLZC1O+3Qp8LUH2MpYhrT5O50c3tGSt8/a08td5OnDL
         P2vNYdO22FherYJEIi72LVbcq9Jv/PBjeowPh0C0aYZUnjA7rLtYNmg94CBNSk+YSgzE
         S8Hs2+5pJclw63REknTH17lVgkKyFdxNMk80U4v71Uj+JfJIOXz1m0OuQW+VjfpGudfb
         GUZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5aRyD3PtdloBUTAoFKEPlxT38xa8KkBOfOe6je1Z9iY=;
        b=nQb7WYNJivIArTXUK33WHFBszb7yOE9liYpGgFb6lSaIJfMsdA8NUEuor1Ct2R9HsC
         Db7vRl0YH6/5/ZSUQOIPiMJOMhkcmdcpTR3n4hrTAcjrmNKd+iOaghUYLNqbSEEMTY6z
         aBI7sEssHNg8Cgs/itX9Hubnz4gea9/SZA6uUTMrcZ4cFOs6bbXVrrpXkFdg4/o0Q/hj
         xGfALEMMmQ8lnMI/hd1a7wp+9l5b8+O9hw1vCOJat6W2XSfKhCyZlP0o28vcz8hwzV1d
         e3EJo95XGmgzswj5cg5BsS8b2i1UCw5vUPVEsD247TULiRCIeZ9+5oZ6wzwLx5rKXapw
         U+Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="M9vn/6Wd";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id w191-20020a25dfc8000000b006716b97bbf1si616557ybg.3.2022.08.14.08.31.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Aug 2022 08:31:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5A63360C96;
	Sun, 14 Aug 2022 15:31:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B224C4347C;
	Sun, 14 Aug 2022 15:31:14 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.18 18/56] scsi: iscsi: Fix HW conn removal use after free
Date: Sun, 14 Aug 2022 11:29:48 -0400
Message-Id: <20220814153026.2377377-18-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220814153026.2377377-1-sashal@kernel.org>
References: <20220814153026.2377377-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="M9vn/6Wd";       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220814153026.2377377-18-sashal%40kernel.org.
