Return-Path: <open-iscsi+bncBDTZTRGMXIFBBZ6Q7CAQMGQEYNCG2PA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD8D329D61
	for <lists+open-iscsi@lfdr.de>; Tue,  2 Mar 2021 12:58:32 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id c18sf4104579oic.7
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Mar 2021 03:58:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614686311; cv=pass;
        d=google.com; s=arc-20160816;
        b=1E3pzsWBws2dhfOEcToQbJTpudbyjozhL99OwPXN1B/oKT0OcMjKeHdffwzcv9QH2u
         YuctrUkpaObLO/0vsg8fMIH+S74cQsRBLfVjlrnoSO8JwRee1vBz6IqTKKycxCt+7n+i
         9Pv5Aj3VZId+zwWPAjQB3Wvhi64nxZDrsuSNAlrzlxixp3YD0DJX3zqi+lsRKL4Cf2Iw
         Re+U4tOP7jGT65CYtY/wUJeDq9Eki5eNcsY2Cc7TWTudObJXK+PpL3wfnYcdbWTiUpG7
         FB2w6jKTri1f2A6wEts0mK5+TlaJGn91aMx2qr936L71fFAPZPQu9EmdryjShzbaV8wQ
         hc0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=6tEWG3wYcTXI7T30rKwacFACMHZQa2SIX1pTewg++Ao=;
        b=kdaDyptwke4k9NUrOskrR5YSM44MQB4JdgWQ2YdLdzBvoW+thGiYvcTVDwkoyalHUc
         06n2qPi2i0aF+d1x8ytIgPwq9FBeKq3mSigC40BGh+6Ckudc+OWq548RgpVSGJP6WmkB
         uQUcpgTQo60wOTv6Bm+zk4gnolZr1W8pYbW4cMMZbz2BUduQFpevRz1dNr0asJdtVAi/
         ealSia21Pd+Et1DjiaOLBPDAmjcE6UMUnipPPm4LevH0d5szE/hUzcLsBRU4R03zZUho
         smYfsRVvQ9L57hBgpYDbFu8l3RXOb+S71dBmeAjXpePHhwInkXHOc/El+AozzgvdNGY0
         BTQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=l223sHXE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6tEWG3wYcTXI7T30rKwacFACMHZQa2SIX1pTewg++Ao=;
        b=cn4rAv6YbPFJruRpmHWmLRM8WQI2502KaE1ZZaHOgXikL2ljtiCR58uYKqq+WnzMG4
         JeeoQ7lUk8x5RJXca1tnDLGyve2sVRI738ZjgCvjmlHfhh5b99tnftLof8rDzAuazQUL
         46YnsxPGfqtVIaioIwtT3OIhZGWXGufYgnSDsYp9pBM2ifhAi/SFgRxWiZsgcSCq3lWG
         U/Kyo2dPlI4i5jLA3WU8MH70OMXQnirtpTYmzronO8rf/pYFWPjlrmhKPSHipyjwei/S
         W/k1p3p/PWRtAViTd/e09miqyNu6GRjBagqCfw9iRHyJEJ2ftw0vrflZMeDgI613y2jw
         fORQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6tEWG3wYcTXI7T30rKwacFACMHZQa2SIX1pTewg++Ao=;
        b=JS0Nm/UWZ1t+u4oRIwaicF3CrHG3meNMpnj/ZPrOYcZjr5yH8oP4X0z+wSaNJpcYVv
         29BE+PLFGsUAzFyBBTyV+uqBAcKRngy3SADan3p1ZgNSiP+Yn/t6Bpf6jXiejbzOMcfb
         heas6owanNLZq5eICczsn9zZV2k9JHTcEBOwTmaTvbEy3G9QhVzIOnhcfDhBopcciTB4
         fgVrAH4TjR9uDfeUhz5g7PsmXp1ks5TpnKIeh1elcLZh3TWOzwaOUXtcpqFAkR0tFXwD
         kgqn6gshoFltrpBBylcN2D2tHO/Tc0ohNT0wfmK2rhZuHY/pGOfPPGHUTtNDTWxQ5AxV
         wIDQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5312e/8f4AZ/T3+BMx4iRlYDL/8Vkrq6nhLzZom5RvB9e31wR/9p
	n///Lj97UcooMpSHrKeF/wQ=
X-Google-Smtp-Source: ABdhPJyTvScZqTgpry2vaxisnr7YrLe1gaFYhURFsgdBqiWLpcm3axitelmgea/0PMQPbObcU/BS4g==
X-Received: by 2002:aca:af0e:: with SMTP id y14mr282314oie.44.1614686311565;
        Tue, 02 Mar 2021 03:58:31 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:39b5:: with SMTP id y50ls5624707otb.6.gmail; Tue, 02 Mar
 2021 03:58:31 -0800 (PST)
X-Received: by 2002:a05:6830:314d:: with SMTP id c13mr17929580ots.124.1614686311163;
        Tue, 02 Mar 2021 03:58:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614686311; cv=none;
        d=google.com; s=arc-20160816;
        b=CsK+lD9j1czQA/I6zQmKGxZD2vg/IzyxhqtJqahRP4cJ9eYgDwX4JT3zaVcWg2Pf4B
         yFpYKhudjTg0MAYG76s8zqmyTEjzaynPJj/IH0TnrPXLqXVJojC6N+Aj0pALT9evqD8h
         XFsuiw+TquxN+RYqxgilJnz7PLWcJgjo0zCw/lIt/fhTc3uL3eSY1Yuqs/GmYSFkdm6y
         le3fjnzpv0q8mU5sqNSikt5PStN1f5ty+OoCK/kZBX/GNixb+00hD4EuUGb6f/Y6Bj9S
         ma7Q0VJ8esMn8jBDlKZxNvh6nRSV3j/2a9LHjIjPLfdAIslEDLJ5i8zv7K5ziQ0gQ9nW
         F99w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6JIOLZuqWa597Vt2n+fSHVK6OFsDdmr6tLXDcf0DPfk=;
        b=i5wfHGUgMii8qbnhC2BVPCYBETG8xwoN6w3DjQl+1YFDh8UrYEqiTqrWl4wOM2//np
         GBznCoE1wse2+ZWKMKYIxYhIDgMi9MeluC6gVlAlJ/RjmXgA0JLYtAfq7Zm8FZcaT1p1
         eYaxyC00ywM3PtoCB8pe7M/gk6kWJfCj2TTU7mMHCqJS07tonSkZKxaD7dVZIltu1SNA
         xJ5TCf2rEp0/68ud5wW1NpzRDsUkzEZ7jrQRE32fn/U4Vca7grHiIkjV67AmD5lORi0o
         UtsF5AUmZYhuM7/jxcUtNnnX7gV1R8Q0Lw19eFXtpzPO53IJywYWWeUf53/JFjD2Q831
         RwkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=l223sHXE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l18si1548375otk.3.2021.03.02.03.58.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 03:58:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B318B64F9D;
	Tue,  2 Mar 2021 11:58:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 30/33] scsi: libiscsi: Fix iscsi_prep_scsi_cmd_pdu() error handling
Date: Tue,  2 Mar 2021 06:57:46 -0500
Message-Id: <20210302115749.62653-30-sashal@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210302115749.62653-1-sashal@kernel.org>
References: <20210302115749.62653-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=l223sHXE;       spf=pass
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit d28d48c699779973ab9a3bd0e5acfa112bd4fdef ]

If iscsi_prep_scsi_cmd_pdu() fails we try to add it back to the cmdqueue,
but we leave it partially setup. We don't have functions that can undo the
pdu and init task setup. We only have cleanup_task which can clean up both
parts. So this has us just fail the cmd and go through the standard cleanup
routine and then have the SCSI midlayer retry it like is done when it fails
in the queuecommand path.

Link: https://lore.kernel.org/r/20210207044608.27585-2-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index f954be3d5ee2..0b7449de1b53 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1532,14 +1532,9 @@ check_mgmt:
 		}
 		rc = iscsi_prep_scsi_cmd_pdu(conn->task);
 		if (rc) {
-			if (rc == -ENOMEM || rc == -EACCES) {
-				spin_lock_bh(&conn->taskqueuelock);
-				list_add_tail(&conn->task->running,
-					      &conn->cmdqueue);
-				conn->task = NULL;
-				spin_unlock_bh(&conn->taskqueuelock);
-				goto done;
-			} else
+			if (rc == -ENOMEM || rc == -EACCES)
+				fail_scsi_task(conn->task, DID_IMM_RETRY);
+			else
 				fail_scsi_task(conn->task, DID_ABORT);
 			spin_lock_bh(&conn->taskqueuelock);
 			continue;
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210302115749.62653-30-sashal%40kernel.org.
