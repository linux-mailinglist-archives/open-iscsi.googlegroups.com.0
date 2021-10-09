Return-Path: <open-iscsi+bncBAABB4HBS6FQMGQEQYEOG6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6E642ADD7
	for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 22:32:50 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id o8-20020a4aabc8000000b002b601d1fb33sf167569oon.23
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 13:32:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634070769; cv=pass;
        d=google.com; s=arc-20160816;
        b=GoZHhl2WDLmXDR5z9NaL8P/6d4Hp0LYVapoJuD8kFomDyxOe2mXhl7UxE7vrxWS5B3
         TTPVokIBzbx2JXstl+MIKiMeGZ1AkJhyOUEUv0SN+WwBh6067F/dB6eR9h8wAXc2vkRA
         XtoGgFl0Z/VztPU3pIkjzEyv7lkN1vybb208mLY3XPHtnadKl7mVjUe9fEIHnhxucfDF
         bjezYTengTvang5ZtCHFWrZtGe/tq/EISzvUQE/MkuGFI7PEQ7+JDNjTOv0C8fjUEKmk
         u5TWK9G7WAzf9YlKaxVqy2mZWek61Rqwv7MYWr+5C+BXtFd7sXveJA7kZG5CZVKqZrIu
         cYfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=VZoYp62WvTBdCzZ+7FoGE0+pDGiHdIkJBBLaRIDL1HY=;
        b=ERBccQnJ2/TYFbF+xmh9tayYugTxl9Cc6ctVyrLlpsnfjvpUVKx0/svhlEa4f/JPfr
         hyDzKHCWpcxLrefHI1T0Wxg4+JV/pti9BKUgzsdKM2ZypplkblBuibnzQPf7q9NQ+mRu
         n4I7VYg77yPNXdtSbaiWd2V9g+dkqlp702UIe3W9FNyTgDW0KML0MnIpLekRnmMyKjK1
         rWNpL46PTlymHtrEWdH/kPYmtsKynsH73we7bkoYnyyr+h/wCZpszn/7YNnJuQWYGL6X
         VTRR1/50UgjMCUJ1HMMunW48NP6VzR/Cnxm8HCuLshfRn6YusmT9H2WCVYUwZwZOA45D
         Qnhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VZoYp62WvTBdCzZ+7FoGE0+pDGiHdIkJBBLaRIDL1HY=;
        b=CNtOnN76FPIQzYkm9JCNEe29Uo0iZZ1px6SxQmn2EVK/qRRvqDHYnJyDjmVIctjikj
         J/C2rVIK2Vk9wmKkvKqJXB6GPBzJGAVb4synxJOgW+wlkt+b5mXWSxdDZng87c5y+6ER
         MvVsrF+je+JZBZUGBV5dU2dfPrJP/6bT+vFfoWAw47qx5IPLzWtnkPxsv+KeABAJErXZ
         prWmkZZZTVCE+JUcWNYxE7i5vLD7XZQlEcNy6P9Tnx3C1C57D+ea6Hkx4mXxPqICxCRG
         Df+v8DIU2URGWFl0c/gdmXKeGPTzCq9xCpv85hKvmzy5LRDDVr2XA66Kb0uF2joaQU0p
         6M0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VZoYp62WvTBdCzZ+7FoGE0+pDGiHdIkJBBLaRIDL1HY=;
        b=8NsvyJHIyPWHomSlKo2yeImmIoS08BP/aNKLi1EdWnB46RDymVtK4p4OMsfQngHUay
         X/JwlmNuV5miRJXF6VS97JuDbdEdyN1KalqFZ7II0d/w0xskPT9wnXa3en2wdlYjExRp
         5NiVmxEdrXk8fnm5/+0e4mjaiB4YXndPXeArOd/8wdQfu8gKUi7kZaQZBmh2quQ9uufE
         7ryi/J+yA0kmVPNhyYZu9yZLttvL+8XHMs64W096k6STAoyHCH5wlTHj1ohXOEp9MmCS
         JMrARJcgKHCFbeXUf6mRB11LdcpI/H7vzV4L8u38pZhzfpPkQ10IJGzuzNlBurb9aXvV
         mFiQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532MrMrzwMyVb6g4nW0t1GefDPpK/Sogc8nbMCaxQl63EJVrc8Ug
	cUA6THUZrcZBVcHOUD86OWw=
X-Google-Smtp-Source: ABdhPJxIgzW1jgsuRqF8nWuZU9LkvUn6Il/OVCfYlW9mLKy8I/e7+ag+gIsJ1im2Nwn0+uPq7UhdkA==
X-Received: by 2002:a9d:121:: with SMTP id 30mr22040149otu.297.1634070768940;
        Tue, 12 Oct 2021 13:32:48 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:4a3:: with SMTP id 32ls37989otm.2.gmail; Tue, 12 Oct
 2021 13:32:48 -0700 (PDT)
X-Received: by 2002:a05:6830:1482:: with SMTP id s2mr250619otq.382.1634070768697;
        Tue, 12 Oct 2021 13:32:48 -0700 (PDT)
Received: by 2002:a54:488a:0:b0:273:b359:c0d1 with SMTP id 5614622812f47-29095873573msb6e;
        Fri, 8 Oct 2021 21:39:18 -0700 (PDT)
X-Received: by 2002:a17:90b:33c8:: with SMTP id lk8mr16004441pjb.237.1633754358275;
        Fri, 08 Oct 2021 21:39:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633754358; cv=none;
        d=google.com; s=arc-20160816;
        b=liBP4leWiCm0Ewde8d20W3SPBaKD96J8jvLXKcu0MoWsSEfGdI3NcURfOp7qRybyem
         RsxN1wSrzTK1AW1VIYDWNjH6BV5bv27RfBMIfQggxOafcjzQ9oBDQWFJR8w37BmOaHxF
         NaprVrVqN8n5pE20LJDnl+z90aoUTGdaK7szbHGlq576fbQttKjfhC2ZeNScWzyDMkOr
         xLd/n0LDi8+5EbINLGQJY4Tm6966cc8jT9HN2PDrsHe83vgpc0Q4UhfzOGrQdw7Vh9ln
         mBbb0CHbYf0+PdYujf0mIRxrzC1Wp2mI0zCYJZPrcnl9CdU36FDLA8yKhV1wWhBfsQV6
         0Q/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Y7T8bXelF16H+KupwZhIVoFfBIJ7fb1y+7t9/6UEH9M=;
        b=ISm2OgigNOcM8vg/ngEYPSNsHuBGMXfnPMdSNbE1h1HVy6dQ0yeTMVdFhc+Jjpc0VV
         yp/YUIk4v3OmYOZQkirXLyeeo8X/DEUPHpzzHhwgdVyNgyH/5CkiESuo7Lx4fTl65v33
         9CeYdpMGn2A6NDNuJFSgBvoTHnl0Le2Aj6qJdREQjYhHzli5KosmLOEvqe9ldMZgWvX2
         K0rH87Z9eXhoYneYMkLEFE7pVPb90NOFTOYdDXBXPut1UL4pMzkYbkZnyltcTf2RL9M3
         2B+UY4fpsrFhAfhzyOfUMcABzDPv7qDuzjLzU6a7EETu1uJm7djlTTgCAEbfBkIpdveQ
         X7TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
Received: from smtp181.sjtu.edu.cn (smtp181.sjtu.edu.cn. [202.120.2.181])
        by gmr-mx.google.com with ESMTPS id a63si84163pfb.2.2021.10.08.21.39.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Oct 2021 21:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as permitted sender) client-ip=202.120.2.181;
Received: from proxy02.sjtu.edu.cn (smtp188.sjtu.edu.cn [202.120.2.188])
	by smtp181.sjtu.edu.cn (Postfix) with ESMTPS id 377B41008CBC1;
	Sat,  9 Oct 2021 12:39:15 +0800 (CST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by proxy02.sjtu.edu.cn (Postfix) with ESMTP id 1FE0B200C082D;
	Sat,  9 Oct 2021 12:39:15 +0800 (CST)
X-Virus-Scanned: amavisd-new at
Received: from proxy02.sjtu.edu.cn ([127.0.0.1])
	by localhost (proxy02.sjtu.edu.cn [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id O8Xitoy0QZnE; Sat,  9 Oct 2021 12:39:15 +0800 (CST)
Received: from guozhi-ipads.ipads-lab.se.sjtu.edu.cn (unknown [202.120.40.82])
	(Authenticated sender: qtxuning1999@sjtu.edu.cn)
	by proxy02.sjtu.edu.cn (Postfix) with ESMTPSA id 0808B200B8924;
	Sat,  9 Oct 2021 12:38:54 +0800 (CST)
From: Guo Zhi <qtxuning1999@sjtu.edu.cn>
To: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Guo Zhi <qtxuning1999@sjtu.edu.cn>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] scsi scsi_transport_iscsi.c: fix misuse of %llu in scsi_transport_iscsi.c
Date: Sat,  9 Oct 2021 12:38:51 +0800
Message-Id: <20211009043851.212503-1-qtxuning1999@sjtu.edu.cn>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Original-Sender: qtxuning1999@sjtu.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of qtxuning1999@sjtu.edu.cn designates 202.120.2.181 as
 permitted sender) smtp.mailfrom=qtxuning1999@sjtu.edu.cn
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Pointers should be printed with %p or %px rather than
cast to (unsigned long long) and printed with %llu.
Change %llu to %p to print the pointer into sysfs.

Signed-off-by: Guo Zhi <qtxuning1999@sjtu.edu.cn>
---
 drivers/scsi/scsi_transport_iscsi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 922e4c7bd88e..14050c4fdb89 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -129,8 +129,7 @@ show_transport_handle(struct device *dev, struct device_attribute *attr,
 
 	if (!capable(CAP_SYS_ADMIN))
 		return -EACCES;
-	return sysfs_emit(buf, "%llu\n",
-		  (unsigned long long)iscsi_handle(priv->iscsi_transport));
+	return sysfs_emit(buf, "%p\n", priv->iscsi_transport);
 }
 static DEVICE_ATTR(handle, S_IRUGO, show_transport_handle, NULL);
 
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211009043851.212503-1-qtxuning1999%40sjtu.edu.cn.
