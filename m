Return-Path: <open-iscsi+bncBDUNBGN3R4KRBIMMU7TAKGQEOV73L6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDC510AEA
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:31 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id n203sf18454084ywd.20
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727330; cv=pass;
        d=google.com; s=arc-20160816;
        b=jRbN1H38dZtLaJVlFWXNbPEVbV3hVr+L1m8pWINaJ6rOvrZI4UHDH1/q/rDZaweiyP
         P3iVvpGECZDyCcJkte1m7JubDZv4znxHxqM94OIxP2ttHMY3YEehB2Kw1hDUr3Tc0i4f
         BLcg1pinKlXESPQdHO5xMokoEJ5plBrpxbKwT9fy/SkjlIZAYLH8Q59WtbG5USuXrwlF
         HTY2Jt5jU6u87zG6vO+3A7R+wsLuELeAUqm3U/VMnkwrGPcF/IuJPC4Kt+3iC4GP57VX
         5k5NWtcPj1wYelHlBxT8B5SMLcjIq68uvxGRgMNWQkGYeWBpjWJbEqb/We0dHEDbc3yO
         JStQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=z6uANFdNkXZ1ZYoMHzGEzUFy/ChtpnmQf52Z9EcGdbQ=;
        b=VXfVZlRHKHiWdGIORJwHMywKINq1WV8Fmq+iB8/1K34ve9eQdUIOoV0Mb0yI8TE0r4
         A/t0dSb0HdtyFveRg7bLyyVARr78FUWudJbtSK6+hyt9zwS0X/wqwt5wF+3yssiJkJVs
         hML3NRqv81eESTlA2NiIctqby7BH4PejBJT16vmlVrBUZ3wrTYDL1XdXcnwpr6CW+qxF
         DaFdjILNhfPnSN1V0apwIPWUQzdggQ/TKH/vzA/sYOa0JoIl6TQRzK68v8WCUzc3RDrO
         UyBOJQgH6jGcdt4euJSdMUuSTOSIZKr4DSetJhMxsUKRl7QxqbWvI/qnQTKVdmmYrzhT
         CzNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=BDgjLltT;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z6uANFdNkXZ1ZYoMHzGEzUFy/ChtpnmQf52Z9EcGdbQ=;
        b=TazpiOn4vFtF92F157Kq8rM8GTTY0xSRuZ5+VXF+eYWTSToMkJiklzzwLX66f911u2
         FB4S2AfDd0VOJid3uTUtpqXjZ72X4Js5EDHbfODH682K+l3e7OjWkbt++V96RSjT+Y3u
         M/7oamKS8I9OKGVSqu00BpW+7xybgjIbyN2AdWPiUIUoqPC2me/mXpzK/OuI0RWiui4l
         QihPCcHW31Ju96vb9L6asW5PUikk8cwqGm4LueD8UZVXFQbxMTPb8UYxOfxVimd0s2W+
         mx6Ejpufe5nrhqB4tSCpZaUgJmNc+f1ISaAoW1aXDh39i7KHUNALJ1uPJearDvTtbccS
         x/oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z6uANFdNkXZ1ZYoMHzGEzUFy/ChtpnmQf52Z9EcGdbQ=;
        b=U8g/3e7xKr/aZtPcwaX5q+B9Q7ThK0vc4YhGS/nWzOQtorybAHRtA7smqyj5PiB5Bx
         BnIMqP5OUJ74dcBtmzTY0mGxhFTOWJYxNiT32U8ZP9nmtzPt1fJGmXbPyjoj6oGKzCcB
         TYT0/75l6Pmq6ZsrYRJn/d/Yx43e9DzYmRLC/Hx1weLcU3bB9DEgdYlHG3Riey00+/rk
         TmH/uqJ7G0g9IRA0fIsCcJf5EEFyjfdzmQY44Bid3as+F4p+UvDcWWNKfYK+YWICSoSw
         e9MDXnTV3kaJTrnYRJK7i83OYwPf3FiG+qJBoWC++rDRb+UUwsoP1+IWjOAiKJs2Zpct
         lEVw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXHl+t795qFS78ubMW6CpbXhyod+lt18H/7sM/n9+Kt5WODQiBM
	SsMoNUmKJXOQCZrFidbp5cY=
X-Google-Smtp-Source: APXvYqxe32Yqp0jpcIK2EnBQdEI0RKbr82zTXnelvkmlRhEVLZfBHlruizfFxD0yCIymsiixtRXP9A==
X-Received: by 2002:a25:b949:: with SMTP id s9mr38750971ybm.20.1556727330133;
        Wed, 01 May 2019 09:15:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:4190:: with SMTP id o138ls125119yba.2.gmail; Wed, 01 May
 2019 09:15:29 -0700 (PDT)
X-Received: by 2002:a25:40d:: with SMTP id 13mr62991089ybe.9.1556727329770;
        Wed, 01 May 2019 09:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727329; cv=none;
        d=google.com; s=arc-20160816;
        b=JUT/vYQQ7xU4G3V9WIxCWoET0R6VD51kjmINASMiamqNiqfom93M3sdubrsFUPKnU/
         EnM3ZCXoLt6P0XN8T/p1BcwkqF0izLJXGiNKfYznywewh+g3xAuwJa8ZK10qLY1J3vAa
         KKIn7oZAXKBOzCB7NmqeEPamOePmn3gN13NnNUF0qtnJIn5H4l3NuCt2bOAXfRCbW28H
         LxLe6E4gtBVkQwBGc2+j3QFZjZgv9BeiquFaSRIPdHvnv2Lk+p+312vE/qT8Cc3hmsVz
         7CDZ4in7q1eVKocuz49h6hArZ7jvP3qwOSWjnEvf72+s7vrP51zlXdXi2y/sMDS5JVAW
         ZSyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=k4OnnUyFmbeLhGLBfOcOJu0lbj7o+R+gou5c25z7QlM=;
        b=y6eEhr+CFLR9UsBDnyUzkU87aYutCYK3mEwx4zL0OpNoaUF8PlVaqZvfJLI0aezUsS
         aeMGKqhdIEihaGZSiToPxye97hTjUryorafZlCeqp7aplwMxclJlp3cXvazfJSXZPaPY
         gbPLmF07+o0ySOmPdJEfRRAPwWDrDtdPauk277/THCO9fgnCoP2I5i27zd4/JMRl4J5R
         CwfXLSjJNnDB84I5HwVZcnbgOfcVwdYcXFAQYpfjb5q4kk+EXBq//5EZVmUwadMot/Y0
         tBiO6wFWk1WpydH8NGvgB3q9wVD3kCnZzR7OMbRK/t3WVsUquVpCfZAjoeQQoTn5eGQz
         lAUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=BDgjLltT;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id a193si820701ywh.3.2019.05.01.09.15.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtA-0005fC-UM; Wed, 01 May 2019 16:15:21 +0000
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
Subject: [PATCH 16/24] libsas: switch sas_ata.[ch] to SPDX tags
Date: Wed,  1 May 2019 12:14:09 -0400
Message-Id: <20190501161417.32592-17-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=BDgjLltT;
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

Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/libsas/sas_ata.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/scsi/libsas/sas_ata.c b/drivers/scsi/libsas/sas_ata.c
index 1ecca71df8b5..d9131746737e 100644
--- a/drivers/scsi/libsas/sas_ata.c
+++ b/drivers/scsi/libsas/sas_ata.c
@@ -1,24 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Support for SATA devices on Serial Attached SCSI (SAS) controllers
  *
  * Copyright (C) 2006 IBM Corporation
  *
  * Written by: Darrick J. Wong <djwong@us.ibm.com>, IBM Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
- * USA
  */
 
 #include <linux/scatterlist.h>
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
