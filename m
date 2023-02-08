Return-Path: <open-iscsi+bncBC755V5RXMKBBLV5R6PQMGQEJL65PKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A58168F5C8
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:04 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id bi16-20020a05600c3d9000b003dfeeaa8143sf6655664wmb.6
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878064; cv=pass;
        d=google.com; s=arc-20160816;
        b=CuphIywJpgo4lc9CyhkImhSUfL/AMVKgEhbXKezsgKIeCP+WHbHKYlgMMOUBRjn7xt
         gc9mg+oDwIAL9+5j/mgeFlWPaCHNzBhwdSXswaCV+w/Ak6xvn7VzVVB4CKmukNPAEmhl
         9POeEFxVX5nRQd0CCb9zqMsBgeEWgw0HEJuZGBDsei8CL4Q+huuLJW3EQrH/FqvNFZmz
         yrnMFbgx2q2b8hrcUFYnA9GQfr1+GcGDWQGpCt+oQjmO1xqxCckHO5E7NubZ8rK3Od18
         q471KV8HuMSMPyEd7vxFonk1dkfGwXJWr0IJmZEM07zY33/9FptR7qQ3Y6PLS5+lz5sU
         axyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=cotll9kXjCbGsXmn1xGzti2u8RSvlu61KcAEZ0/SJpg=;
        b=Upo2+gv/jWkA4Vb0/VYCP1RxjMAnpgTwwQo3b+wV/9agwQt7fQIVTGC/wx4mlq/Xlv
         G9vLchfxW3UQ2IeBOH3SY8I5TiaXnUA6Z3Ek6cstGw10jtK8H0aV/9FNiTFCqIN6ap/o
         SjgpegHmF3gi2Hi3ko43vls7B4y6Q1flsu3e58pF2mx88rWadYTPQUuYdKwuKp4L7WUe
         ASwyijlKXfw5noCLNNmsoSX8M+1BK8QBefnzGhhGxOzfTB7wwag9Psc+Dn8rK6L8kF+Q
         yQvI5fEWN+UzgHPVgVYlcInAi5XNs11ITOwFd/mfYBPk893VP1ea5gOyMH9t7UODg4T7
         ht2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cotll9kXjCbGsXmn1xGzti2u8RSvlu61KcAEZ0/SJpg=;
        b=eX3HknOdI1PRELBFtd4pDnJm68HocCHHOmQrH0oCP912qabCeGd2rrlVPfSTD1kSjZ
         /pAqrDscUSzFA0uhZBay7gQJcCEV6ACKFnBGlbmoeK0B4zLPCY9iSHhWcjY2JLSuYOnE
         cY2uO6O5nI+shoMqeLXFexjWgL2qu8/IO/LeyH4Iyjg0YQ2LtYtH62k/KwSiqMcGG7rr
         f4wy3q4vT6GDjXyhmApq8HWiQPmTQNbD5jfSgpjLypp6KJQNglKvpePXK8rs/+D3uWKR
         DLd/8fC9R21GVUnSheuPq1vYcuvTGMao2T0zmM8QRCo62ayEqLaWTSN+aIS50FsGOnVK
         JMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cotll9kXjCbGsXmn1xGzti2u8RSvlu61KcAEZ0/SJpg=;
        b=M7aNBCecRCMg6LLUnwHA/2WQPed+3eUc6A9zWN7/f/dCcLaneyIYE8+pVAHC2b/a1T
         +eLeeAiNsNUZuxYWm7nITD5IHl7E1rPStL38HqDPKQ/nfCno7qoraMcoae0Uf83NUvr2
         OnenzYYVj3F5dOWTS0lfGjL8PT4CrTzEwV0A82F8SqSzfz9bhi4OHqmDmO/hVumoFGsr
         jRPDwOtbzE2/1yCzoQ6xPE/Znob4OktCy6OlJXhYRXKGuaQJLnU/HOoqnlizFF2jvbsX
         8rv0fra5S1FA1+pndV87qlU+KEg1ocZUqKlWRVuYbpE8MJ3tRHZeQ19A3ASQxiUm8bs1
         acoA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKWPiPQvl+rvf3Wg8DHNqPwCg496DuOmK0ttiP0I8e1O6dq0REw/
	lS5FGaeudZNgjshE5vaDSyw=
X-Google-Smtp-Source: AK7set8lq1k6ng9t0wdXEIbBS8aZgcRLVDjwkgdt5/21zvGXlhzxugsJG98L7Ehym097na3cowO7aw==
X-Received: by 2002:a05:600c:54ee:b0:3dc:5198:6b7 with SMTP id jb14-20020a05600c54ee00b003dc519806b7mr328183wmb.4.1675878064055;
        Wed, 08 Feb 2023 09:41:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3d92:b0:3d9:bb72:6814 with SMTP id
 bi18-20020a05600c3d9200b003d9bb726814ls1440184wmb.3.-pod-control-gmail; Wed,
 08 Feb 2023 09:41:01 -0800 (PST)
X-Received: by 2002:a05:600c:4d16:b0:3df:fa96:f670 with SMTP id u22-20020a05600c4d1600b003dffa96f670mr7271554wmp.22.1675878061619;
        Wed, 08 Feb 2023 09:41:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878061; cv=none;
        d=google.com; s=arc-20160816;
        b=V7e49QN+5meBhyG3AatTNedawMgmlc3MWlICmvTWLxFc16yKG5xwZAWrEuqBdNZABP
         lIBnzsLB9bn8ALpVvRn56xmeM5Mqz6qCrPplyTrhw4ngYuSuIAqjE3+iAJyYFAXQ1hoY
         bqYmh3HPLGhcnwCYQDU4P4RRog9tIB/+xBNZ3tn+TeMmDGxQZvmjm1/VJK1tbZ8BRFMt
         mPXnI0Ze48CuxDf3ooqL1M4hMcVAU8NA9NjJVfieM9OirxB0XcgKRP29qUkl2VW/Vh8O
         wCITmODOzCdJa2VWize/pMayv8/HESS9J9IWEI28+qWTvvn2HMwqP8Ki41uW2jMOw4lO
         YLqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Nr1j38m9cVXtSHhCgWDHdk/ZquyV8OtPaSpRISoboXM=;
        b=mc5Y3zDy9NVn/D7iL5gft/CgerIrbNPzoBE1zYXLR+uEt/kwGvWSMRP10qDebn2sJH
         HzCPbMpk7EvECDsnk2+kSSdc16IYlQL34OVE8T5SGB61ERJUEWmc6iwwHNq6d2hlgExC
         qmF33YL3g2Wf07kp+8bfWJV47FL5st8d3JfUfwoxwmk7M32N1lrcCKAxvJphdyhVek0e
         xZTRcMo+uM++jDRd/W3J1Bl7hVrnYnI4mf2D/Bzc92hAC5LBLAWy7eyhyiXs+S13jd5v
         AKoVwPG7XeEDfu5O4n2jdb0n+F2zIBek7gESBxzSXFgqoQkwuRjwH4D/sp0qBa6JNNlA
         Oi2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id n15-20020a05600c500f00b003d9c774d43fsi439477wmr.2.2023.02.08.09.41.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:41:01 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 69DEA341C8;
	Wed,  8 Feb 2023 17:41:01 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id 2B72F2C146;
	Wed,  8 Feb 2023 17:41:01 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 65949CA196; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [RFC PATCH 9/9] iscsi: filter flashnode sysfs by net namespace
Date: Wed,  8 Feb 2023 09:40:57 -0800
Message-Id: <283ecc31424b7f5e8e3dd68aa2283fcd109de145.1675876736.git.lduncan@suse.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1675876731.git.lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
MIME-Version: 1.0
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.de designates 195.135.220.28 as permitted
 sender) smtp.mailfrom=lduncan@suse.de;       dmarc=fail (p=NONE sp=QUARANTINE
 dis=NONE) header.from=gmail.com
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

From: Lee Duncan <lduncan@suse.com>

This finishes the net namespace support for flashnode sysfs devices.

Signed-off-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 34 +++++++++++++++++++++++++++++
 include/scsi/scsi_transport_iscsi.h |  4 ----
 2 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 13393c025ccb..9a176ea0d866 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1268,8 +1268,42 @@ static int iscsi_is_flashnode_conn_dev(struct device *dev, void *data)
 	return dev->type == &iscsi_flashnode_conn_dev_type;
 }
 
+static struct net *iscsi_flashnode_sess_net(struct iscsi_flash_session *f_sess)
+{
+	struct Scsi_Host *shost = iscsi_flash_session_to_shost(f_sess);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static struct net *iscsi_flashnode_conn_net(struct iscsi_flash_conn *f_conn)
+{
+	struct iscsi_flash_session *f_sess =
+		iscsi_flash_conn_to_flash_session(f_conn);
+
+	return iscsi_flashnode_sess_net(f_sess);
+}
+
+static const void *iscsi_flashnode_namespace(const struct device *dev)
+{
+	struct iscsi_flash_conn *f_conn;
+	struct iscsi_flash_session *f_sess;
+	struct device *dev_tmp = (struct device *)dev;
+
+	if (iscsi_is_flashnode_conn_dev(dev_tmp, NULL)) {
+		f_conn = iscsi_dev_to_flash_conn(dev);
+		return iscsi_flashnode_conn_net(f_conn);
+	} else if (iscsi_is_flashnode_session_dev(dev_tmp)) {
+		f_sess = iscsi_dev_to_flash_session(dev);
+		return iscsi_flashnode_sess_net(f_sess);
+	}
+	return NULL;
+}
+
 static struct class iscsi_flashnode = {
 	.name = "iscsi_flashnode",
+	.ns_type = &net_ns_type_operations,
+	.namespace = iscsi_flashnode_namespace,
 };
 
 /**
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index d03d9eb5707b..0c3fd690ecf8 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -504,8 +504,6 @@ extern void
 iscsi_destroy_flashnode_sess(struct iscsi_flash_session *fnode_sess);
 
 extern void iscsi_destroy_all_flashnode(struct Scsi_Host *shost);
-extern int iscsi_flashnode_bus_match(struct device *dev,
-				     struct device_driver *drv);
 extern struct device *
 iscsi_find_flashnode_sess(struct Scsi_Host *shost, void *data,
 			  int (*fn)(struct device *dev, void *data));
@@ -514,8 +512,6 @@ iscsi_find_flashnode_conn(struct iscsi_flash_session *fnode_sess);
 
 extern bool iscsi_is_flashnode_session_dev(struct device *dev);
 
-extern bool iscsi_is_flashnode_session_dev(struct device *dev);
-
 extern char *
 iscsi_get_ipaddress_state_name(enum iscsi_ipaddress_state port_state);
 extern char *iscsi_get_router_state_name(enum iscsi_router_state router_state);
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/283ecc31424b7f5e8e3dd68aa2283fcd109de145.1675876736.git.lduncan%40suse.com.
