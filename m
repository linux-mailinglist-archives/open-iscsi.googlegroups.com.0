Return-Path: <open-iscsi+bncBDUNBGN3R4KRBLUMU7TAKGQEH24OBDI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-it1-x13f.google.com (mail-it1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AEA10AFC
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:43 +0200 (CEST)
Received: by mail-it1-x13f.google.com with SMTP id o197sf5713549ito.3
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727342; cv=pass;
        d=google.com; s=arc-20160816;
        b=plEcjvbWnXF5N118hKE4r0ahAfbiI6GFfZyzrtyZelffcuawuRw13zhj7L2lA7eVzX
         J7VtlDG76qKgDarxU8PuudbnrVRjvq9XeLH8FwbCbin27oUJtpr3lo92/OvVmTuZG685
         QWV5utnCgjvcaz/j1SXEED0zW35pLY91Uy69d2nflCU4VLHUitjyVIJOs0hCbjWf0IfY
         fDe9xI+e5W8Ux+pGwh09Q8RWWgDF3o3ESwaZDBBcL5CgO5yc8J+0yGWdnGUZR+J6ZHB+
         XIBn6LhUdN0oSe5lASq/vQ3iMTthZwGD7zrwc+EkiMGyAOuE7FTRrPvbJOgQnzAHX3D3
         Ji3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=HxB5tiKS/puyQhvEUwQVIV7LrmhD4eN31aV3DJgYpqY=;
        b=xBXjJPboXy1SudW3Zm5zZJrVTJ7CqFXPD2t04YLYZSbOJhFweahscuj7Ydtbh4RtTa
         UzT3vDmS6uKbVcY3gd/PvY+uLbLw6u2O+sMf/3kOT8DvgSJJr974iMi4/rYQhDqXQDEI
         xBeoxsfkZrqtmAzRgVZCIflTC0nqik6bwfYctC9tiSBRUmJVxFrzYPAHVBfAVnKw1l+/
         Ii2cjhDlHL0Yedm3//zvueooA1YeEGns92laVupdZ5BlqmWNWa1DRy93khfpVFS2RUg6
         RasWSK02Gww8PFkC832us5aIZsteDVeLM0Rl4nppCzVNvXqxCNEBtHtAHNkWD1GS0rh2
         fZzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=XMp1By9p;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HxB5tiKS/puyQhvEUwQVIV7LrmhD4eN31aV3DJgYpqY=;
        b=dfbm9gERPc7y4fbReKiT77tCgzMSWOROLBWkqHycIuuZyDrzuER07r4DK8I81LzTLR
         /lsB4y6ypAKSfnkJ2QyMvQ+71VYVOPQk2LQ/bzTP/pfDwHdXOlnk5C2cOzCNKP8tRlwU
         3QJPz9S981ZxWHxt56CVeqFDjadIQAqwXE/I95Lk8rD64hvBhMIUC+AI1ppV2k+5cb+E
         nIruWUQwEAqf/7/4WtCX+8kQrPFz15atDCqpnA07MjTAEwdRAhGJrOJT4pjvKGwZHJ+Y
         24v0In6sYJyBGocWCmomCphH3032bKZ7vHUJjTVucY5eq6jR28K7soy3K1aUTNaSR0KI
         xpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HxB5tiKS/puyQhvEUwQVIV7LrmhD4eN31aV3DJgYpqY=;
        b=NxHYAq/Rq2OAdzdI2A9kmrb2IiMpr5iBB+xkcHLpy1WR48SoDHqWMWUM+1xjb2SRBm
         EXPnBxayAARc5eUJGo6TcTqcV+YvnxmZEgLQp21JP/tCkm514XuTff64I9Y5x4TZIJyT
         ftYsbxuxaCDegO2wNGmuikMVUv/kaae/shxVAi21Rf1MWlqz0hZqaLKkpOkQfGDeZRUH
         5gVIbJpKJ1Ulw6ljtKfd6DsdbOXqPSWZy634fq02Y02LPUbQRzXHRHaWVvJeLrorGlcT
         PdxQu6CqqGCd2eowkd/YGLmIOLizM1FM2DYFXgfxdszn925PX4xxsrzgKTbsvC4qOvVa
         ToCQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXQct+eV4coi+nG0e/FfbnqYkPKRPS9jxZrDx41v93Ctk7lBjhA
	iBQ5jO02DtdZHqqf6FW5rxs=
X-Google-Smtp-Source: APXvYqy51XVYSh1iQSpvaBKkziHbV3g/dPM230eodb6n+DLn9JwqVQEVkEdIYx3Erzc1yZack9J8Ng==
X-Received: by 2002:a6b:7f09:: with SMTP id l9mr15938146ioq.66.1556727342476;
        Wed, 01 May 2019 09:15:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a24:7fd7:: with SMTP id r206ls388593itc.0.gmail; Wed, 01 May
 2019 09:15:42 -0700 (PDT)
X-Received: by 2002:a24:5c10:: with SMTP id q16mr8840277itb.81.1556727342196;
        Wed, 01 May 2019 09:15:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727342; cv=none;
        d=google.com; s=arc-20160816;
        b=RM6P3SRBRuYUdBEp1qOpKJp1AnRP7a+Paph7PJ1v07KFjW0bmyWz40CYv1dy3Igc/t
         ngU0E9BNkOL7yQ0hX3Hfqo4GA3ex+XOEMsgk2P1HwpO3S6aysjpXhYUFMAkKdL3llTNi
         4DT4Aq1u2M186VicoRCqhjSS09uACDKdCVXXUpahsxeevgtBcpakzk9DQVpoknaPBjmC
         H8dKeeNRashKl2oH8soZNbBIeKYZfsfjRnQblcQb1QOoja4wxGpZ78hKdn7foOBD/pnw
         oneuHr7paW4THdF9OSAmWh/kBI1i61HCH1zK98adUjH/EMxjmuzPpQ6ZQBZynX1MplQg
         YOtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cC6LJAycF0WEXN1PiWNfS+TYLowm8sPMN91Aj88qDwo=;
        b=h9Nu4OA/WlBSIPHdOw9xjMj4+vN1QmMnWoPnWb/TG+b/B067pEh5MsKdUd1eZYLdXK
         1aFMDQZdW+1qbhtKXyRfEwnxaKpfke/+bGQOJh98tHjjD4ZS0cGFl4oKRjcB9sUeVfQ2
         XcRANX5FHqUmIAZPHmW+7dsRxWbY6gfykwlu5L4rVMHRCKhHqTjoeEqsSobsF5Ewkq9Q
         C/9DgLh3MNqkhCRouNn2MTG6QAcbXZtE1wcjRelOwC9W2aOpJiKZV6P4aMrnShFpO6Im
         Atyt2IQxeF899ck7VSb2jElVAt/T5yzfze/r6D7xOzs0x8gHLMkKR18fhjNqPlfNsR/x
         GN/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=XMp1By9p;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id m10si1727885ioc.3.2019.05.01.09.15.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:42 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtP-0005hN-FZ; Wed, 01 May 2019 16:15:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.de>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Willem Riede <osst@riede.org>,
	Doug Gilbert <dgilbert@interlog.com>,
	Jens Axboe <axboe@kernel.dk>,
	=?UTF-8?q?Kai=20M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	osst-users@lists.sourceforge.net,
	linux-kernel@vger.kernel.org,
	Chriosstoph Hellwig <hch@losst.de>
Subject: [PATCH 24/24] osst: add a SPDX tag to osst.c
Date: Wed,  1 May 2019 12:14:17 -0400
Message-Id: <20190501161417.32592-25-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=XMp1By9p;
       spf=pass (google.com: best guess record for domain of
 batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
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

osst.c is the only osst file missing licensing information.  Add a
GPLv2 tag for the default kernel license.

Signed-off-by: Chriosstoph Hellwig <hch@losst.de>
---
 drivers/scsi/osst.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/osst.c b/drivers/scsi/osst.c
index be3c73ebbfde..fe4f0e7d6359 100644
--- a/drivers/scsi/osst.c
+++ b/drivers/scsi/osst.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
   SCSI Tape Driver for Linux version 1.1 and newer. See the accompanying
   file Documentation/scsi/st.txt for more information.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
