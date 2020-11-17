Return-Path: <open-iscsi+bncBDVIJONZ3YDRB3ORZX6QKGQERMOLXPA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8C92B598F
	for <lists+open-iscsi@lfdr.de>; Tue, 17 Nov 2020 07:08:46 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id i7sf7260582otp.14
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Nov 2020 22:08:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605593326; cv=pass;
        d=google.com; s=arc-20160816;
        b=E8qwQnnurx6McaBnDEW1FCooaRBnv0METz23j9KZ4dAUE8PFN12LNfrmWcLhqWnMYI
         7zAGl162Muuqn96ADv0FDvqrfrUTn4QE266hKdBZWJ6SpX+8rWAGij8kPIojURKZVWpE
         X1bk2KjLCtoIQEcG2v3Q3KQqMnqJz/htV6WdZCcYvZp+fKjHrRki5JFCq5ExykWOQtZq
         B4gPXJBeu1KfxVK1GG9Wqnh/Qf8zCYkwwX2AD5F5LTYB1ufUzUcks+LaTHtrS6HudnM0
         qPTfewFTLI4TPQvbKw2rTUgX/iTt+h1u+B7wGXqZWLYlYzecqan52ottR0Sp9nODBk3t
         jb4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ZGKcOAQIbVauz8fzFWILHKMUKcpmTeSc0w+6ucssON0=;
        b=hciRASbVIBc5C7DNRZGZQNKL/U+Q39RZSv/c49ZILuBpciRl0+eFQ3ajK6V0bL4E6B
         TQdQLCV9ELYkExAElNNJOiN6pKkA9i/KjrC2Y4gkxWeKMJo5LSTCrshfY49MiCDXTYto
         Jgj7PH3EaUlekUQgEsjPmCy5kutAOaOYBjCRy4xfIsLb5xaJwP/JAM2FnIu7xD9p1XdA
         DkbNVzsd99YRpJOG07b3RXymemVZaMwpZncDBTewV612KeVCCSgbOhuqAWdQCQBdKCi+
         ORxGIbiaBKOpWdDJquMtT1Rw/lGpeSAURv1Rp24bj+A7vjtD/Us7rbUQY4sT9KeFlvtL
         igjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=IOgPwRQU;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZGKcOAQIbVauz8fzFWILHKMUKcpmTeSc0w+6ucssON0=;
        b=pSgd+xxfBuTk2oFoNknoXwfvyt0E4AZ0XYKG9ig8XQoWZbj3HGn9OVNgTrSo4IzRqR
         TQ+y0HFAwMSCx3AA4YSOLoRGN6IiP1Ewv7nXaUw4K0m25JcuTONcw29SCH6j7Qw3DmZq
         ZaR1hGczSKXkO/OatPQ4rWxHRveqsFuWfB9Fp5VGePb65j7HxDOcYTy0MgmH6B2WByW2
         yByItXgaQbfhVPp8ku94LOPC/wgMxaQdhJ+GVgHl1UOQ1FQEE1xfdcGZOgbm1i/3r6GS
         zMilq2QrzRxysHENNhUwFkkUcNonkUubp8X2Tf3P/oIBXOF6Gw8Y3nG+ysvn5dY17ME2
         COeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZGKcOAQIbVauz8fzFWILHKMUKcpmTeSc0w+6ucssON0=;
        b=DYNVlSbQhVjuk0ANxB6cSqfOgByP4EbZA29T6EJgacKomHaB0+MNuXJHjEBM01Kdgv
         LjEl+icB4lAXCkEfvb6Xt1jxl05UKvO3gIoMZNs/r98I/5ljoYqaPwhGDsYeJYfjrUno
         2AsoIMVeabx8snoigmuVt7MELxsu2WRtRi737B/jbixpdnYAEvrKBHiDLs5crIfMDiEe
         jLgs8EZqIuYao+tXnnSK/75kNWT5C+8U91GKOO6Jc5cW4w6veoVCTiqyEbDLw7OZGgmn
         eiHFXBY2b5lRGp+UlGsn1HknAiqvTmQdzTQhK1OFPOztr0uwDq/AlzKGnShk9A+V+Leu
         wOmg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532hKxTWwKliE7THy1WkjmL+68WkuIr0hLPVJzeUJXCLFd5C3vJC
	2xj43k3FpFsjgFMNmZlrCEs=
X-Google-Smtp-Source: ABdhPJzPDeN2rNiFq8dAK8e9f1jE+U0DqGO71yCUdQP1jL0XaVIZBnOpvWsgb5STT/SGyqeHvjEhig==
X-Received: by 2002:aca:3d54:: with SMTP id k81mr1401619oia.144.1605593325844;
        Mon, 16 Nov 2020 22:08:45 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a54:4e8d:: with SMTP id c13ls3734425oiy.8.gmail; Mon, 16 Nov
 2020 22:08:45 -0800 (PST)
X-Received: by 2002:aca:b757:: with SMTP id h84mr1569674oif.98.1605593325388;
        Mon, 16 Nov 2020 22:08:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605593325; cv=none;
        d=google.com; s=arc-20160816;
        b=Ug2I3zNb35tJVeTWeDOOFo90sJ+2fwGvG5oYr1YGlFuejesRi1jSowNwS298IZcdTi
         7OSvjubYfcuJng2/QkijmtXRRhUzJSHiwgFheK0yDaHSsXdDXdVY5tuMUSDlDYqs3c4z
         hwNBAVB4sCSWyjIfO5/eRM7m2OSdP57Ame41MUI4jC7vgK/vKtI1MSK+RqnxPkl327Xx
         boVswvwgbk9p83TIM+yXlYJZG6dod/QulQ0XN9kU06DcIeR7byaKeTgN8tnZ9xdWk0hs
         ybpD7FBCdmXmMtIJAJ1czr3RJBSDVLiRPpxh6r+JOu2pxMFr4nllPpQkt2YQogVgfnqv
         bsMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8qGtTXxRyWI1xvsctCA6sELceOZDYlsMJQCIXV3suGA=;
        b=CBZjOiZuDAFnnOFQoob0W434BTULTkpb6tZKklYByK3kScVciaPGWZZTnJGAWMJy0r
         CWVFnmGdffTEhw9Z3JMpM5f11YK4TtEWVZ1/JJ08l+jiaD/FnYSIvG0uiQ0RuOYwqNYZ
         7YggJZhEUN7MaR1sNIj6hCCq5zv+IusUIKqXYAhiUmDYAsALv5phYSNS31xiCckWDZ6o
         sEKWb904KhkATe3gAKWQjKmpaY52FdM2kHqpSk62rzozgX+yEWT6Bc55NvNCvp/Cej7g
         fuuAkX3LlqbuGWesMggSfJ+vujhZha1qb7SbNdOvI1vV4aQ9IN66XTN+1TOOa75KW3NF
         AMzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=IOgPwRQU;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id n14si108536ooj.1.2020.11.16.22.08.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 22:08:45 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH63ZVo195590;
	Tue, 17 Nov 2020 06:08:43 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 34t7vn0nyf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 17 Nov 2020 06:08:43 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH65Fri161787;
	Tue, 17 Nov 2020 06:06:42 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 34umcxr8cv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 17 Nov 2020 06:06:42 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0AH66daa011379;
	Tue, 17 Nov 2020 06:06:40 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 16 Nov 2020 22:06:38 -0800
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-scsi@vger.kernel.org, Lee Duncan <leeman.duncan@gmail.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        michael.christie@oracle.com, Lee Duncan <lduncan@suse.com>,
        open-iscsi@googlegroups.com
Subject: Re: [PATCH v2] SCSI: libiscsi: fix NOP race condition
Date: Tue, 17 Nov 2020 01:06:37 -0500
Message-Id: <160559316816.969.2361617121962261448.b4-ty@oracle.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201106193317.16993-1-leeman.duncan@gmail.com>
References: <20201106193317.16993-1-leeman.duncan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxscore=0 phishscore=0
 spamscore=0 bulkscore=0 mlxlogscore=899 malwarescore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011170044
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=911 suspectscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011170044
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=IOgPwRQU;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
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

On Fri, 6 Nov 2020 11:33:17 -0800, Lee Duncan wrote:

> iSCSI NOPs are sometimes "lost", mistakenly sent to the
> user-land iscsid daemon instead of handled in the kernel,
> as they should be, resulting in a message from the daemon like:
> 
> > iscsid: Got nop in, but kernel supports nop handling.
> 
> This can occur because of the new forward- and back-locks,
> and the fact that an iSCSI NOP response can occur before
> processing of the NOP send is complete. This can result
> in "conn->ping_task" being NULL in iscsi_nop_out_rsp(),
> when the pointer is actually in the process of being set.
> 
> [...]

Applied to 5.10/scsi-fixes, thanks!

[1/1] scsi: libiscsi: Fix NOP race condition
      https://git.kernel.org/mkp/scsi/c/fe0a8a95e713

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/160559316816.969.2361617121962261448.b4-ty%40oracle.com.
