Return-Path: <open-iscsi+bncBDUNBGN3R4KRBJ4MU7TAKGQEQJHVSDA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 237AB10AF3
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:36 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id j62sf18549900ywe.3
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727335; cv=pass;
        d=google.com; s=arc-20160816;
        b=u+G0nY1TZXrVc2y4t0bZflv9lc+4C2H6U8kb9r1Legyh5TYffdA9zWeR4kDVW5jfKc
         s5F9/jK2mB5U/AhsR2zZSqTEX1qU+0Ikm3g3bhMhwAJNyqUPR0CVFoZzhHUHW8qlYXyW
         /BfcWIxGT5OD/cIzLQN8GXwT80jS10I6Q1wUBPfyvkwc2aH07gz+aIT6t8gU5QNSc02j
         ZLtUCdD9W4gtN+q+akOG4ZzuJ0pMsBzTwtiy7jCyDNbYZSX8R2JXkZKrVXh45rMiXDH8
         j8nDeXCcWP3U+wsXebB7L1QL6skdGwkhVU0Td5RLfK38kalCJLlpss2xoZHd0F1qk0la
         FhJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=rjQCknlyUa3EdWLYjd7mUYhXa8jv7hVM4PljXiGPGoY=;
        b=dGXrrBkU/MWy3pOp0CoKdT0TxshT5Gpn4lP0jMlACRsQsNNmB7MVtmR1GbYq+Uv8Sc
         3zPfNguhhqSaA6uTK09PvvXE2miqI/6IHBTUt2KYJsoiXKB3SBLB1oJeqEYtWQ2KE6DV
         IG4JVMa1CAyA0oXgOb8KTPIhnbBE/ySljq1JqN0XN5R3pMCLSMtcThtcTifCZwHBYGxB
         s+DAoNbGHU5dgksxFx1KTRg7bOB0kg5tq7oGrS+a0DFbjc+qEqksQ/o8Phif2M6cQqi7
         /e7qzfh6L1S3A2hzuGE/eVSiSvrPhnZqi4jY8OnDHq1QPjQH2lfJoOgFuWrU2NzblYn4
         rl2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=FHUCEwyw;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rjQCknlyUa3EdWLYjd7mUYhXa8jv7hVM4PljXiGPGoY=;
        b=UsLmm85VzCsmzgk5uEhbszZSMVaFmBn4iZNW0EXQZxX9bVzkvIdywaRTHp3kUu9o7e
         3K6g6CcSA46YCTeCKc1ky3kQ4L5c7lBCTjm45NIhVQpM6bR7OaRRLgEg1e6BPWpbhBtt
         0TTYZuZHbM4tnhiVpHjDGIShb5J5OKOf+XqvPDDiFTVvYEejLCyOw0jgG6vWtRvW7Lgm
         lgfBt2LmfaNYLPuI0lkKa/GiBPqc7UtWnx9Et7cMYpJAFJQEA9J3IHW8wqBjb6UtHg2K
         7T+1ZNRkzXf5T8kXUrYT6rk8HaIkL/v9Q4pUktLFeqvd0sLgh4mNEyVVcIaI4KxMMXzu
         0JCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rjQCknlyUa3EdWLYjd7mUYhXa8jv7hVM4PljXiGPGoY=;
        b=AtL6+68JTFxBXNU3IDB+oyJha+iM3ROHspMQD26J5gwgH3S3mbVbsCOKJh8noTQC5a
         3mvXDWnMGpCsdv/NtmP6cLHNJHxe+V5u1RWVW1rGiGQlLViWtbN/9JlS6JTRqNMbptKG
         BW6tiniyxOZtHR/SU1eQJ69MsOpb5I2F2agEkiw4tukoRFv2Ib+vVlxZN5kVaMOStg1U
         1bwflb2lbmL629Y87jJoequ9T/2vTWvYrFMjTrJChXCcjuhEG2ck/2Wp0tBvR1SEvwMk
         NcrLXRN2HMfi0XLRwpBxyc/Jkm7cacnz8lEMoVX6YNGtrqw+2G7OqOBfjUTMuDL7HA0f
         AHsA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUUscnssiOqdVQqtd6Ad+Pw7JVFs9J4oWGLS9deFdBPeYc3HPa7
	iGwYDoCQ2IyNLegDnX8KNKU=
X-Google-Smtp-Source: APXvYqxeny3xfhhu+Bg1SsFpd3+/5KDnBRomMj9QaiNFZj1LdMcF0bOFD3n8Lmkf4EYWNdJQ3ZE1bA==
X-Received: by 2002:a0d:eacf:: with SMTP id t198mr39367112ywe.495.1556727335228;
        Wed, 01 May 2019 09:15:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:e78c:: with SMTP id e134ls11213620ybh.12.gmail; Wed, 01
 May 2019 09:15:34 -0700 (PDT)
X-Received: by 2002:a25:3c5:: with SMTP id 188mr26491510ybd.43.1556727334881;
        Wed, 01 May 2019 09:15:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727334; cv=none;
        d=google.com; s=arc-20160816;
        b=WTBvw/Umhc6SI+/mZg3aIjuKzTrnBdgFb3WQUmwtul3o8DnBp3k6IWiHll4ghr3sZ/
         IvT6xYu3lh6VIV6uuVT5jB4wzBZkqdoHjFRtKUUkCToaISquaFqlBceWDnhMFuw+TykS
         gsPkaORoOu6XB0nPNv6LOWvXgs0ieISS0+E4vx9Oxcoa/ogU1ZFyNmormnTvReBBUuuG
         uHCwEQgu77/zJcUnw85GUSXwtlgyoPRO7bMDfXRRgvDQfkeRXfpHaCyOLzZMEeAr2IPg
         3pB7bpZZonUAZ3AcFxuTnKjDcVUpD8C5AOUYE2+/M4esodsprPNud7gSQVmCsTgt4LP5
         Hh2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Wsq9CqoFxHpRiziE7z9eEKG21vxlvBxZ8PZ7HGgW28M=;
        b=nDPuR3TADBEnXl9pO5RY2OWUE0LsKc33kruUNZkGzu71TjHArWBUAp8hBvISE9zA87
         xjF/wTLX9orlW3DmENKoDxBuxWc3MiOQZNLoNQWoJssUZ1EvR7i0sNPLi1+5xUZmDtvL
         oCpqvY03aA32kd8Epp8u/20WmUkHbbH6fPIHNqBg+azOLXVPyq96dHFzd7bQaZ2gzJ+N
         FZAhE0Bjisx8D/Puqqaym8FyRY4wL34SVvw3y+8zkXA7SsnX1ENzCJtGCWA2ozb4rZ5N
         BpSG96C4uqj5LGGesCY0rdXvYLUlKmKkprl2x3PJKbRFudh1J9Bs6KwkmujwehrLMJPT
         uYHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=FHUCEwyw;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id l65si2081983ywl.1.2019.05.01.09.15.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtI-0005gJ-6p; Wed, 01 May 2019 16:15:28 +0000
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
	linux-kernel@vger.kernel.org
Subject: [PATCH 20/24] ses: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:13 -0400
Message-Id: <20190501161417.32592-21-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=FHUCEwyw;
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

Use the the GPLv2 SPDX tag instead of verbose boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/ses.c | 20 ++------------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/drivers/scsi/ses.c b/drivers/scsi/ses.c
index 0fc39224ce1e..8afea5a1d3f0 100644
--- a/drivers/scsi/ses.c
+++ b/drivers/scsi/ses.c
@@ -1,25 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * SCSI Enclosure Services
  *
  * Copyright (C) 2008 James Bottomley <James.Bottomley@HansenPartnership.com>
- *
-**-----------------------------------------------------------------------------
-**
-**  This program is free software; you can redistribute it and/or
-**  modify it under the terms of the GNU General Public License
-**  version 2 as published by the Free Software Foundation.
-**
-**  This program is distributed in the hope that it will be useful,
-**  but WITHOUT ANY WARRANTY; without even the implied warranty of
-**  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-**  GNU General Public License for more details.
-**
-**  You should have received a copy of the GNU General Public License
-**  along with this program; if not, write to the Free Software
-**  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
-**
-**-----------------------------------------------------------------------------
-*/
+ */
 
 #include <linux/slab.h>
 #include <linux/module.h>
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
