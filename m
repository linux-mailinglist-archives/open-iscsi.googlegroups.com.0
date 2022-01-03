Return-Path: <open-iscsi+bncBDTZTRGMXIFBBRPFZSHAMGQEMIFWZIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E03304835D0
	for <lists+open-iscsi@lfdr.de>; Mon,  3 Jan 2022 18:30:45 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id k11-20020a05651c0a0b00b0022dc4d55f14sf8449613ljq.22
        for <lists+open-iscsi@lfdr.de>; Mon, 03 Jan 2022 09:30:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641231045; cv=pass;
        d=google.com; s=arc-20160816;
        b=vdpI52ej6fhVf2zE3wqOjNbBrANA9HYzxgdT7PTTQxXq02LHYaMwSp90/sbP38eBy/
         5aMA5OTm2sxcq5TsFJFpWFKNI3/F6uDXLeEaOzXYvqrEAJkefodZuZIiVO/0Xi7xT2+l
         kbxujG0ufIetKE+PajkVxY6q1vHJX7ITqet/ZBG10iZxaNspK7TPOiXIgKuKAseEf3lJ
         AimJBMzxAyzPkIA3b2i2DaFP2dpHnOJJGoEqruRxHX6DWOAGpAmkdJn4wRv7MgOnz+5C
         nZ7Bm74Xr7ZU6wGCv87NuV+kaigTqgY+eXgP32NXqDxLTJbdhSK+Q2pknX54UQi/E8Wg
         CTYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=XKJoWmnv+Z2hC4pfHW2sBuqWtWEPCT46MuzT7Mm7CwU=;
        b=urKVqW0wU1OPbp2OaD1eX8kqY8/c3IhwRmWW/LLQQXN8wDG24RkCVjtp94/dKYZNbf
         5CLDMOv2GzFCWFgnVGaERbPm2jdPeKTbtjiPNfnsixJezmNfAvWA5Vy7FdYqHGCLDMas
         CV0WSlC4t77/oMaPkvHCqXjJXZcSicz5eSf58jNToedJ4K0OnMJm28SvjH7E34Rv9aAK
         n3ZqKiCeUKv1ywpBNMNMDIO4ZyV8SOEVSqfGxEmgXRVK8jnmh3gNlNEppikPTX+vzAgb
         vR0UvZyk6SgYs55w6pn3tOBBrbLx2PQ+O8mQ9LBui38ItEAEN65S+BAmnVQB3p0fcWgZ
         IYCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DAu6FA+u;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XKJoWmnv+Z2hC4pfHW2sBuqWtWEPCT46MuzT7Mm7CwU=;
        b=KVUi5XGuYQrHrg6HJF+9+tidtWGxXFYRpUnaZXQpNjhr3RLjUzIdLKGS8FahYekUsF
         2j2GQbEX3YRUmGM6RUP8U/L3baa4nJBKLwcDu8eNOo1x7dwn+Ginp/la48lKxt8Wazp1
         FWdXbfCW9gh0gjr3LguW+8Hrd/+riStlWhKlZfdIQ7tuycwxOVuWzcnXP1DZMzdGc8Dn
         Tgyui7X34qD6DQs/P0QhMPnDLwBqZDT/iQ7Z6Mud5O0zqDmCV/aquK7CtkgKmElOs8Z6
         C2gbO/DPkEU0twEbTuDvyEve0wWWEtrvklhc51O0wjqX3W+hKXEWkEYeK4rSqQCDo7O1
         R5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XKJoWmnv+Z2hC4pfHW2sBuqWtWEPCT46MuzT7Mm7CwU=;
        b=VTa5Ehjak+ePqetAywk92YWp12KweaZ/yfq7+XF5IyV9mbmxbC9ZXJo0nAI26WUS4G
         LBhhKnarP80cd8xv5W6i4RiPRL0kpn2m79WbRWBXE4wvqCxjQV1eCTnZWKfzXMmK77mJ
         q84fa8Yvq7g1+ws9uNJtZdQ9R3YpS6L5QmwTjwxjNP1kLcXdhEfs+hZ75qfmKPHfDUlq
         FanBNYCaJC9BIZGQfv3odgv0FDhO4Q3Q+Pt0sDR4a7h2nFt2RuJFiP/FrnDPVCJ+s/by
         K3tT27E7hHG8d8UqSAbKr1ExOiDVsZ8v/QOBELWJrIlyFLqyK9pDrhtzV8+hTMBcIZG+
         CHRQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530ZWzkiy2e+SoYGkSfuT/D8f9qbmtcJC05gYn3trLfILc5gZoh8
	Xr/nMxibHr+/wxvcygV/4sk=
X-Google-Smtp-Source: ABdhPJzSuJ/Vghaw7QNiSgwO/cXlarfdEF6tjFIPDFD/6QF1l51ptbqKAlZO+/h7tmPPyhW1ju20wA==
X-Received: by 2002:ac2:514f:: with SMTP id q15mr41250594lfd.633.1641231045443;
        Mon, 03 Jan 2022 09:30:45 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5304:: with SMTP id c4ls3309445lfh.3.gmail; Mon, 03 Jan
 2022 09:30:44 -0800 (PST)
X-Received: by 2002:a05:6512:32a3:: with SMTP id q3mr42119435lfe.473.1641231044487;
        Mon, 03 Jan 2022 09:30:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641231044; cv=none;
        d=google.com; s=arc-20160816;
        b=imAlh8FDxpeVngqQYufvHGW86WPl/VdTAKzkF8KH0i9ZTwzOBfNP0aCQ1kZaOjaHLg
         IF9DHGZDySuY/MAnXyaYa1T31rVKdRh8yt2O/VwpmtsjezewdyGIAFL/ayClMSKyUIGF
         v+EHFu/DRH1CLgNcvurL8Li33WLxdReHcQo7HNingkGW/jA6vPi0xaKt1CGQASX+4MkM
         CM9svhs/eq/L7HV2EByBbTPjA7HaahMtx5crqaHD8OpTV9s3ZdjFhdGCWnGqFIEjpWik
         h+kladcJUeQZHDnjVeZ6CFshX8oQ9I1ZDL5X26zIqMXB95jEELE5KnuPM7dOh8KUm6vi
         yr8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=oc9gjGRv0WwWCR+O3Gm49odZt3U4vy7MShXhsubOJQY=;
        b=Z5iclVsCoMNLlXC6O772NpDeHuY5PrEons+oQ86rXbOrGuzPlXQgpVzWZm3OYjMCwx
         Llm6Ew1UzjpgAL0ER+MAlIibYbMAZ+7UHb5DLIanUslpa+u0g2Bwok/y9AivPSo9PB3Q
         VYp9Ba9/0j6eMxxToMkqcr2XCkqbmb0dFb25+IjtjaGlsTBkWhF/WHI2/NDz9R0YdtuH
         ChmzvgqSt0I0+ut0ci8Oz1/ZPTh/PNiaMtOEF8JMlcp379ubHXizxnu1Sl1zXQTz9D6R
         9NcXmZNDURaSk5qMVycm0lTfymOtrkm6utef2SI7raKSVyc9iYJfHYFEPfd7jNCb/l8r
         NBRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DAu6FA+u;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id k19si1823630lfv.12.2022.01.03.09.30.44
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:30:44 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 08FCA611A8;
	Mon,  3 Jan 2022 17:30:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBAC8C36AED;
	Mon,  3 Jan 2022 17:30:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lixiaokeng <lixiaokeng@huawei.com>,
	Lu Tixiong <lutianxiong@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	Linfeilong <linfeilong@huawei.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 1/4] scsi: libiscsi: Fix UAF in iscsi_conn_get_param()/iscsi_conn_teardown()
Date: Mon,  3 Jan 2022 12:30:36 -0500
Message-Id: <20220103173039.1613564-1-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DAu6FA+u;       spf=pass
 (google.com: domain of sashal@kernel.org designates 139.178.84.217 as
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

From: Lixiaokeng <lixiaokeng@huawei.com>

[ Upstream commit 1b8d0300a3e9f216ae4901bab886db7299899ec6 ]

|- iscsi_if_destroy_conn            |-dev_attr_show
 |-iscsi_conn_teardown
  |-spin_lock_bh                     |-iscsi_sw_tcp_conn_get_param

  |-kfree(conn->persistent_address)   |-iscsi_conn_get_param
  |-kfree(conn->local_ipaddr)
                                       ==>|-read persistent_address
                                       ==>|-read local_ipaddr
  |-spin_unlock_bh

When iscsi_conn_teardown() and iscsi_conn_get_param() happen in parallel, a
UAF may be triggered.

Link: https://lore.kernel.org/r/046ec8a0-ce95-d3fc-3235-666a7c65b224@huawei.com
Reported-by: Lu Tixiong <lutianxiong@huawei.com>
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Lixiaokeng <lixiaokeng@huawei.com>
Signed-off-by: Linfeilong <linfeilong@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index f3dfec02abecc..ebf3a277d8bba 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2991,6 +2991,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_session *session = conn->session;
+	char *tmp_persistent_address = conn->persistent_address;
+	char *tmp_local_ipaddr = conn->local_ipaddr;
 
 	del_timer_sync(&conn->transport_timer);
 
@@ -3012,8 +3014,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	spin_lock_bh(&session->frwd_lock);
 	free_pages((unsigned long) conn->data,
 		   get_order(ISCSI_DEF_MAX_RECV_SEG_LEN));
-	kfree(conn->persistent_address);
-	kfree(conn->local_ipaddr);
 	/* regular RX path uses back_lock */
 	spin_lock_bh(&session->back_lock);
 	kfifo_in(&session->cmdpool.queue, (void*)&conn->login_task,
@@ -3025,6 +3025,8 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 	mutex_unlock(&session->eh_mutex);
 
 	iscsi_destroy_conn(cls_conn);
+	kfree(tmp_persistent_address);
+	kfree(tmp_local_ipaddr);
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_teardown);
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220103173039.1613564-1-sashal%40kernel.org.
