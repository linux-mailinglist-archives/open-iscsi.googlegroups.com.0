Return-Path: <open-iscsi+bncBDUNBGN3R4KRBD4MU7TAKGQEZJDHFBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B270D10ADD
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:13 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id b5sf8122182otq.5
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727312; cv=pass;
        d=google.com; s=arc-20160816;
        b=SbXDx+FpKNLjUxxmG20SyR/u2oZKMYsIgoF5bKONuNAH1MyzR5eruSum6gKLHfU4ho
         pSWxfGIWt/dX33rQo+lFBgOj0ESlc/HCniSAofJ6C2J8OcWLNVGakHX0zbdTmTrq66Ai
         eCcOFq02AbWL12Odrt2KZ/Ru8ogshab32nk2W5Ju64ohxkXbzaCZ+EWvS3zveqjA4KBQ
         Kx0CCXspD1wRtyVvkAxT7oZCJQq7jUP558ArbtmyZKrpAxV7mP0grMO3svw7jEy47tCs
         FeClRRAWMeBFVwLizVH7buInSq0SXUxPJL1kEQiCfY3W22RRaa0j7znFuMXdKrjOGwxh
         OMGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=2GIhe8Y+G4bdFjWamx3eG6sGT/YMVJ57agWWVFPlBs0=;
        b=wLmevzarO0Fs9o06C3DnHfj+wRWKjUbZMbK3OLmwOjSZyf+9/H0yJ2gDL3sGeKd0ri
         D2XSlwMhDfW78dro05CQX3/yzqg/4iSw1o7gZkcGJJt6N72nM8KjqCYGnPz36wx7a5J1
         Q/I7oEylw/VhUYJ5XbGYLvFYb5w58pDiqRfroLCmY7h6NVFitK883yWp4b0D/do5nY5a
         Or401HIQKvt9ZqrfNzOYdPlopY+fNj02oigUfpU9suu/CfBDXTdy3WMQIzx8z1mCUQPf
         cijlXFVX9b1BBmzMHbMrBhY7rbzizuILbBCdMJYnQKGgu/adz4HHDO690H0Zu3FRX06D
         1H+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=L4vA6rGl;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2GIhe8Y+G4bdFjWamx3eG6sGT/YMVJ57agWWVFPlBs0=;
        b=HR6sjnwZ8WJ/jmz735HIodXtn9TxqqfalN7TmnULTpxhsxE8Yj7l8heokyH32QvTyO
         MiHT4e4bP4O7reDli29KNuqRvhcbLXKvEa8mPeDcix/n8DLikK8ivRWIKjOmKuO9fjcG
         pPsVbZ4B/F47ZsC5BC2wdH5Hfq3IWqVY6otfcZLNita7jFzKbCCTGBAuy6d4hfdLn6aH
         eRHUjeEOn56Edb86E5NPTf2vPzyh9FzJckxChDSB9xKijUTiL4N/N2OrFfnnqqQb9U7c
         AQ9ubk6cv2KEeRgbLAUE901x4EpHsC2wNSnQEW0p47EhA4es/dJoqJLfASs3YJlawXLg
         hw5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2GIhe8Y+G4bdFjWamx3eG6sGT/YMVJ57agWWVFPlBs0=;
        b=iKZdP0Q+GPdBIFM8bdm0s2/QYVYx+ZqdVPvROdhaVdo5hiU7jqfEK8g64fFkaNHqA3
         Wn7AJWdo2t5UeBEQytPfD73dPEwslzF5j6rsVPGIKAFlX+ZO2+YkF3+TkBOb6zCgO7tN
         rGtISnO8ziBZbrGTc3H2hGfkb2zrQCKAi2TOfA66LND+BhVgo5VSftrADfVuNbGrh9KA
         hH5FNYwfurizy5InGuIo6MJ2ebQ5C0riZK01/DWhybLaJLVkOBVSf82lYVx7fbTpMWaB
         /e2k5Sd3V5rvsRI+JlBAgD/ZCodAwhyVhZ5vkI1b4La0DdmaCNF5D8NraWxKDH8sLq7+
         3+Yw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXydd6LOenXnwollqIrRehBBAPQYR6Uf5jtJKerAo1NAViYhll+
	Y1+8WWcyGaISluk2NupvIVE=
X-Google-Smtp-Source: APXvYqw2sqNkm4Tu/lCWBiHH83SAcNe47YYZllbaQqgTLXMYDkmjQFcWG74OVyeXQSmAmeHQ8IAAJg==
X-Received: by 2002:aca:c243:: with SMTP id s64mr6560087oif.162.1556727312353;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:578c:: with SMTP id q12ls894381oth.11.gmail; Wed, 01 May
 2019 09:15:11 -0700 (PDT)
X-Received: by 2002:a9d:7748:: with SMTP id t8mr16845489otl.286.1556727311693;
        Wed, 01 May 2019 09:15:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727311; cv=none;
        d=google.com; s=arc-20160816;
        b=QZK4HBuOuHXuyHKsan5X3kmS9//HPTdQyUQFUxI8WsOb2y7SmBoqRQFwY9//UT6Hlx
         wrpiPmq+wDNUMBzleT1ZWEDzTqVw+ejHaMS1K5iQ7cGHJiEHY/OdiEbWQY6qIIcL+gJw
         XlnjOpaWnxCEecwJ4/QzTeJdLU2WOsa3udToZb4eb6KJx6S0tAIkJJgVRLW6C0nVtH3l
         1hlOqdJcrZcms7s7mBIM6wj/KTYQlTaTBYv+vIQTMdFiz0Bun05JXrVgQoGmgN7K5MZM
         84sCGHzKQ4VEoJp2u2152GQeqcIg3IvtARoVkctfhla17iymXtlv/zS8koLEoATdB8uL
         Ao0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=oHHHJivNn10YJ/v35o0sJeDAixlW7bD20a8kHdNA8hk=;
        b=KflbdarZ6qZ/GhD/nyiv0sij0p9sIYwbYYrLRoXou0zapPlSgiOlnw6l2kF5V8jQI9
         G5uwI2K2q/+iUMFkUzYp0VyxJVv+rCnGkXEPHXZ2SjQ0/oyexLH8Wdja+U1GXLDO6A8Y
         3mGPMGzLdGW3nEhYzkWvB3SUGA4IqDQhiII8bHcOXd4o2bRSCQmf4aOvhRvMCbaiq7Nt
         futlo3DcW4Rm3qGVS67LRtw6NJV5L/W7ZhyEXqxoMSUVz7Y8Zcs30hAZjwHaupl/I8oE
         X14ZnUutqQyyuZQczvgbudomLkqVsJKOhzEQNskpzddX26O6kFpHl91GvfwQOpWFFYIl
         p7tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=L4vA6rGl;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id x2si1945229otp.5.2019.05.01.09.15.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsk-0004OI-NS; Wed, 01 May 2019 16:14:55 +0000
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
Subject: switch core SCSI code to SPDX tags
Date: Wed,  1 May 2019 12:13:53 -0400
Message-Id: <20190501161417.32592-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=L4vA6rGl;
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

Hi all,

this series switches all SCSI midlayer, upper driver, transport class and
library files to have proper SPDX tags instead of no licensing information
or copy and pasted boilerplate code.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
