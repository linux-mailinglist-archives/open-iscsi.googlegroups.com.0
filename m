Return-Path: <open-iscsi+bncBCIKNOFMWQGRBUPO7SSQMGQE62WIZ7I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id E54F47605F4
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 04:45:40 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id 46e09a7af769-6bb0ba5fbcasf8203777a34.3
        for <lists+open-iscsi@lfdr.de>; Mon, 24 Jul 2023 19:45:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690253139; cv=pass;
        d=google.com; s=arc-20160816;
        b=UEnD2MQt5g2yVgvP7v86THHm3WlLslnki5AyJTdM/ktKFC7fXv9gqHfY3F6jSzx7r8
         4Pn3+seqWiohodROeFXp3YIiOW+aPA8Jlnr64HNhTJ17VYIrlvZEENRBOA2E9AhvnNC5
         +SO9qtzsxRNTLnlL/uVZcXf+0JH4bvgpaDhxHdcXmIgqXTlGaGwyzakuZROCtvCDrgFe
         vurmxWH8qgd602Vpn5dK4yWat6ciuabl38Oi9mOwod8dlLpoii2vrs0Yz7SSWkRrTBif
         FtlhYS/0BU/6appBmcXGC6dI1KSoNFBUlHt3ofAovhndV1+4jA699SS6qZPWEtk30u6J
         cr+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=WCjDOx/0WP8uOXCXYoTbzapIi6nMIyqOfIPJiShTE8U=;
        fh=vwEEfjY7oiwSg1ay1D8wxvq8/4FXR31uYswVfQKJ698=;
        b=YS+39v8fGoLEoQRpfiOslz2Jwo969r2qR7KYPPu8vt/g9EKRPHkcxDdsxr/rxfjpUN
         iRgzcISLDvfgBjFSa9b/hR6wiQ+yLalx/jX/Em9+SNdbkwS1Sg37s6WYXTl8wZrMQ3BK
         B7ftJG0QvjxrGF8fT2ELsooWT4LvEgRw+qFHDDd3OivhX1K6ANJ+wyxZ+ShZnb1nfKkJ
         e5Ke15C8jTCgDjlVpJRzR27/Nf57BK9eOOyoe3zz+fjynkj3yVh0D+oRwsXSsbjaCw4q
         PzhLFnv+/U7CY8ePPrV7+NUVBcWd9ZMdDIWK3MXseYghBN72nNdxjMz7bcA39bOYMHz2
         o53w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 20.231.56.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690253139; x=1690857939;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:mime-version:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WCjDOx/0WP8uOXCXYoTbzapIi6nMIyqOfIPJiShTE8U=;
        b=gH02oHT/cz/BvVL42RjD33kF2vE2qdLGBNy0yTRyzkpBtaxscdgEELIPkwkuhnVGq5
         B4TzzGyV/eOfXKc0WYOvSi8ukpfb1Qq/1VsCQ1ffzb71dwORrM1KtcGabnxjqIodzmR2
         UFOGvY3l5Lgm1790GStTH9yVELW/H6aPt6600XDAe8yikktBReLZyLea6DGOtgg9d/vk
         j5P9LFXtIN2REtTUVmkTp53tiExZs3Adobp973xvZ+jabcMRQa/wmBgWbmof/PLYuMZW
         IHGJDowbXalAAyWY06O0HJth32TK0MTAkZ0sLxluH4bEKPgD5P+3YAIC2SBoAnm4Sk72
         RGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690253139; x=1690857939;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :subject:cc:to:from:x-beenthere:mime-version:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=WCjDOx/0WP8uOXCXYoTbzapIi6nMIyqOfIPJiShTE8U=;
        b=XArZq8aqtfEYFj7pHYNPZUKPIB23F8W6tsAd096Dq+gcbpu8FXFYfBArLWnMRKFqPL
         fKNK0pd81H6AOZEPDjiWehwKk4WonuUgTp0msv3tdP331veiLCesdNQDMVzDOyzgn1Wm
         mkjo69P6xRZl8Cg0fR/ZDWUigN/zsfuEukYCiAvECarAdj8+C5psqJJyOFijuNTZJuCy
         dakgE4X9jgGI8BA+zcRYWdCcH0oddIeEgi0twruJLYyElg4tgaU97EnSM1vxjZuRVrsp
         1Vc2pj/b076+aYHkm1gZeUfWomCMXTJiUmTx3BHoWYS1g7rNRSgeC5ZPYo/OJ1NgqgUu
         Z5dg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLbnThlur5HkhzH90S9yVilEeBC98YWgOGOKJe+yPytIG1nFq91n
	rrh/OdtKbFiJSCvh/ma8RnU=
X-Google-Smtp-Source: APBJJlGqal0O+Oa/zF/b8jgPPdtuuBhOhJX/dGeILpNP+PlyBrH6s4JcNQyQf6qEiIC8tYumBFJHQw==
X-Received: by 2002:a05:6870:f14c:b0:1b0:7078:58ad with SMTP id l12-20020a056870f14c00b001b0707858admr14346481oac.38.1690253139322;
        Mon, 24 Jul 2023 19:45:39 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:40d3:b0:1ba:2267:82c9 with SMTP id
 l19-20020a05687040d300b001ba226782c9ls5942922oal.1.-pod-prod-04-us; Mon, 24
 Jul 2023 19:45:37 -0700 (PDT)
X-Received: by 2002:a05:6870:e38c:b0:1b3:738e:a341 with SMTP id x12-20020a056870e38c00b001b3738ea341mr14268979oad.46.1690253137509;
        Mon, 24 Jul 2023 19:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690253137; cv=none;
        d=google.com; s=arc-20160816;
        b=YoXGo10eZms87Mz5lm6BdndfheT64bVp66lHKU1o5lhusjR7n2XckDzrV30uzCg3tU
         dexsSLnkeOjCT51bdiHj3n0qf3VGFtnuy4aNy2006gi4uArj3nP8FGc7LJK/NYW9Jp/E
         pcQfzxK6O62r6yl8XwWwWs9sEbnmNEuQxCoeCxNfeBlE8iY/CVEzr/9mz1BkVpHIwb2P
         N9zJ9eKW3vtohFRH+i7ti1vHz5u/OYdrXiqUZC5lcPJ7Fy6r6RGPEXCH8WXen/InXzO9
         aKrnUyiBghdnDD/gK2b8/vyNPo1Pk6apF5FoDetjDCcPnpgdpiag9cTkXm8cSYORvYna
         /MYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=lfWt1KHYE3Ov46K9gOFJJaD7wu3XJy2CBvBTSnozcN4=;
        fh=vwEEfjY7oiwSg1ay1D8wxvq8/4FXR31uYswVfQKJ698=;
        b=MVSPId6LgcgebEGqUHbtH0hPBt2qZD2A+9lPIa/X9X/fCNQmEYiemvaug2bhwHnLct
         zbKQ6iW+Ghk2dKDGyBYzxgdjRhv/0Z1TjU4XS9Xv1kllaePyiNOuaKDkfInXE93ts6Ee
         GzCxJcmGaD7364mGlVMuTiNguZ1Sgv/AlElyCQpBm7rtMlp4k3SXY2KJvNWAJiYlUEq7
         hv11lXoydB2L/3C0onazEqFTab2Rv42PS5fmNWyYSPW3XYJI7GPQs8s6pjomdtFtp0gF
         focyHXt0jjFaYAAHFMkJFzes2dVrq0X+D6DIm2WUakO0AO0wrunD+hlMU8gxdV4PNv3R
         onig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 20.231.56.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net. [20.231.56.155])
        by gmr-mx.google.com with ESMTP id gb27-20020a056870671b00b001bb6f89348esi220088oab.1.2023.07.24.19.45.36
        for <open-iscsi@googlegroups.com>;
        Mon, 24 Jul 2023 19:45:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 20.231.56.155 as permitted sender) client-ip=20.231.56.155;
Received: from localhost.localdomain (unknown [125.119.240.231])
	by mail-app2 (Coremail) with SMTP id by_KCgDHHRhMN79knIaCCg--.11044S4;
	Tue, 25 Jul 2023 10:45:32 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	michael.christie@oracle.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	vikas.chaudhary@qlogic.com,
	JBottomley@Parallels.com,
	mchan@broadcom.com,
	benli@broadcom.com,
	ogerlitz@voltaire.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [PATCH v2 1/2] scsi: iscsi: Add length check for nlattr payload
Date: Tue, 25 Jul 2023 10:45:29 +0800
Message-Id: <20230725024529.428311-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: by_KCgDHHRhMN79knIaCCg--.11044S4
X-Coremail-Antispam: 1UD129KBjvJXoW3CFyfXFyxur15WrW7uF1xZrb_yoWDtFW8pF
	y3Was8JrWUtF4xuF1fXr4avrWavFWrW39rtFy8K3s5Gw4qyry5J3W8KwnY9FW3JrWDZ34r
	G3yUK3Z5WF1UK37anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvK14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc2xSY4AK67AK6r4UMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAI
	cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxh
	VjvjDU0xZFpf9x0JUCg4hUUUUU=
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linma@zju.edu.cn designates 20.231.56.155 as permitted
 sender) smtp.mailfrom=linma@zju.edu.cn
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

The current NETLINK_ISCSI netlink parsing loop checks every nlmsg to
make sure the length is bigger than the sizeof(struct iscsi_uevent) and
then calls iscsi_if_recv_msg(...).

  nlh = nlmsg_hdr(skb);
  if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
    skb->len < nlh->nlmsg_len) {
    break;
  }
  ...
  err = iscsi_if_recv_msg(skb, nlh, &group);

Hence, in iscsi_if_recv_msg, the nlmsg_data can be safely converted to
iscsi_uevent as the length is already checked.

However, in the following parsing, the length of nlattr payload is never
checked before the payload is converted to other data structures in some
consumers. A bad one for example is function iscsi_set_path(...) who
converts the payload to type iscsi_path without any checks.

  params = (struct iscsi_path *)((char *)ev + sizeof(*ev));

A good one for example is function iscsi_if_transport_conn(...) who
checks the pdu_len.

  pdu_len = nlh->nlmsg_len - sizeof(*nlh) - sizeof(*ev);
  if ((ev->u.send_pdu.hdr_size > pdu_len) ..
    err = -EINVAL;

To sum up, some consumers code called in iscsi_if_recv_msg do not check
the length of the data (see below picture)  and directly converts the
data to other structure. This could result in an out-of-bound read and
heap dirty data leakage.

             _________  nlmsg_len(nlh) _______________
            /                                         \
+----------+--------------+---------------------------+
| nlmsghdr | iscsi_uevent |          data              |
+----------+--------------+---------------------------+
                          \                          /
                         iscsi_uevent->u.set_param.len

This commit fixs the disscussed issue by adding the length check before
accessing it. To cleanup the code, an additional parameter named rlen is
added into many consumer functions prototype. The rlen is calculated in
the beginning of the iscsi_if_recv_msg which could also reduces
unnecessary duplicated calculation.

Fixes: ac20c7bf070d ("[SCSI] iscsi_transport: Added Ping support")
Fixes: 43514774ff40 ("[SCSI] iscsi class: Add new NETLINK_ISCSI messages for cnic/bnx2i driver.")
Fixes: 1d9bf13a9cf9 ("[SCSI] iscsi class: add iscsi host set param event")
Fixes: 01cb225dad8d ("[SCSI] iscsi: add target discvery event to transport class")
Fixes: 264faaaa1254 ("[SCSI] iscsi: add transport end point callbacks")
Fixes: fd7255f51a13 ("[SCSI] iscsi: add sysfs attrs for uspace sync up")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
V1 -> V2: resend with correct CC list

 drivers/scsi/scsi_transport_iscsi.c | 72 +++++++++++++++++------------
 1 file changed, 43 insertions(+), 29 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index e527ece12453..62b24f1c0232 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3014,14 +3014,15 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
 }
 
 static int
-iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
+iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev, u32 rlen)
 {
 	char *data = (char*)ev + sizeof(*ev);
 	struct iscsi_cls_conn *conn;
 	struct iscsi_cls_session *session;
 	int err = 0, value = 0, state;
 
-	if (ev->u.set_param.len > PAGE_SIZE)
+	if (ev->u.set_param.len > rlen ||
+	    ev->u.set_param.len > PAGE_SIZE)
 		return -EINVAL;
 
 	session = iscsi_session_lookup(ev->u.set_param.sid);
@@ -3118,7 +3119,7 @@ static int iscsi_if_ep_disconnect(struct iscsi_transport *transport,
 
 static int
 iscsi_if_transport_ep(struct iscsi_transport *transport,
-		      struct iscsi_uevent *ev, int msg_type)
+		      struct iscsi_uevent *ev, int msg_type, u32 rlen)
 {
 	struct iscsi_endpoint *ep;
 	int rc = 0;
@@ -3126,7 +3127,10 @@ iscsi_if_transport_ep(struct iscsi_transport *transport,
 	switch (msg_type) {
 	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT_THROUGH_HOST:
 	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT:
-		rc = iscsi_if_ep_connect(transport, ev, msg_type);
+		if (rlen < sizeof(struct sockaddr))
+			rc = -EINVAL;
+		else
+			rc = iscsi_if_ep_connect(transport, ev, msg_type);
 		break;
 	case ISCSI_UEVENT_TRANSPORT_EP_POLL:
 		if (!transport->ep_poll)
@@ -3150,12 +3154,15 @@ iscsi_if_transport_ep(struct iscsi_transport *transport,
 
 static int
 iscsi_tgt_dscvr(struct iscsi_transport *transport,
-		struct iscsi_uevent *ev)
+		struct iscsi_uevent *ev, u32 rlen)
 {
 	struct Scsi_Host *shost;
 	struct sockaddr *dst_addr;
 	int err;
 
+	if (rlen < sizeof(*dst_addr))
+		return -EINVAL;
+
 	if (!transport->tgt_dscvr)
 		return -EINVAL;
 
@@ -3176,7 +3183,7 @@ iscsi_tgt_dscvr(struct iscsi_transport *transport,
 
 static int
 iscsi_set_host_param(struct iscsi_transport *transport,
-		     struct iscsi_uevent *ev)
+		     struct iscsi_uevent *ev, u32 rlen)
 {
 	char *data = (char*)ev + sizeof(*ev);
 	struct Scsi_Host *shost;
@@ -3185,7 +3192,8 @@ iscsi_set_host_param(struct iscsi_transport *transport,
 	if (!transport->set_host_param)
 		return -ENOSYS;
 
-	if (ev->u.set_host_param.len > PAGE_SIZE)
+	if (ev->u.set_host_param.len > rlen ||
+	    ev->u.set_host_param.len > PAGE_SIZE)
 		return -EINVAL;
 
 	shost = scsi_host_lookup(ev->u.set_host_param.host_no);
@@ -3202,12 +3210,15 @@ iscsi_set_host_param(struct iscsi_transport *transport,
 }
 
 static int
-iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev)
+iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev, u32 rlen)
 {
 	struct Scsi_Host *shost;
 	struct iscsi_path *params;
 	int err;
 
+	if (rlen < sizeof(*params))
+		return -EINVAL;
+
 	if (!transport->set_path)
 		return -ENOSYS;
 
@@ -3267,12 +3278,15 @@ iscsi_set_iface_params(struct iscsi_transport *transport,
 }
 
 static int
-iscsi_send_ping(struct iscsi_transport *transport, struct iscsi_uevent *ev)
+iscsi_send_ping(struct iscsi_transport *transport, struct iscsi_uevent *ev, u32 rlen)
 {
 	struct Scsi_Host *shost;
 	struct sockaddr *dst_addr;
 	int err;
 
+	if (rlen < sizeof(*dst_addr))
+		return -EINVAL;
+
 	if (!transport->send_ping)
 		return -ENOSYS;
 
@@ -3770,13 +3784,12 @@ iscsi_get_host_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
 }
 
 static int iscsi_if_transport_conn(struct iscsi_transport *transport,
-				   struct nlmsghdr *nlh)
+				   struct nlmsghdr *nlh, u32 pdu_len)
 {
 	struct iscsi_uevent *ev = nlmsg_data(nlh);
 	struct iscsi_cls_session *session;
 	struct iscsi_cls_conn *conn = NULL;
 	struct iscsi_endpoint *ep;
-	uint32_t pdu_len;
 	int err = 0;
 
 	switch (nlh->nlmsg_type) {
@@ -3861,8 +3874,6 @@ static int iscsi_if_transport_conn(struct iscsi_transport *transport,
 
 		break;
 	case ISCSI_UEVENT_SEND_PDU:
-		pdu_len = nlh->nlmsg_len - sizeof(*nlh) - sizeof(*ev);
-
 		if ((ev->u.send_pdu.hdr_size > pdu_len) ||
 		    (ev->u.send_pdu.data_size > (pdu_len - ev->u.send_pdu.hdr_size))) {
 			err = -EINVAL;
@@ -3892,6 +3903,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	struct iscsi_internal *priv;
 	struct iscsi_cls_session *session;
 	struct iscsi_endpoint *ep = NULL;
+	u32 rlen;
 
 	if (!netlink_capable(skb, CAP_SYS_ADMIN))
 		return -EPERM;
@@ -3911,6 +3923,13 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 
 	portid = NETLINK_CB(skb).portid;
 
+	/*
+	 * Even though the remaining payload may not be regarded as nlattr,
+	 * (like address or something else), calculate the remaining length
+	 * here to ease following length checks.
+	 */
+	rlen = nlmsg_attrlen(nlh, sizeof(*ev));
+
 	switch (nlh->nlmsg_type) {
 	case ISCSI_UEVENT_CREATE_SESSION:
 		err = iscsi_if_create_session(priv, ep, ev,
@@ -3967,7 +3986,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 			err = -EINVAL;
 		break;
 	case ISCSI_UEVENT_SET_PARAM:
-		err = iscsi_if_set_param(transport, ev);
+		err = iscsi_if_set_param(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_CREATE_CONN:
 	case ISCSI_UEVENT_DESTROY_CONN:
@@ -3975,7 +3994,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	case ISCSI_UEVENT_START_CONN:
 	case ISCSI_UEVENT_BIND_CONN:
 	case ISCSI_UEVENT_SEND_PDU:
-		err = iscsi_if_transport_conn(transport, nlh);
+		err = iscsi_if_transport_conn(transport, nlh, rlen);
 		break;
 	case ISCSI_UEVENT_GET_STATS:
 		err = iscsi_if_get_stats(transport, nlh);
@@ -3984,23 +4003,22 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	case ISCSI_UEVENT_TRANSPORT_EP_POLL:
 	case ISCSI_UEVENT_TRANSPORT_EP_DISCONNECT:
 	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT_THROUGH_HOST:
-		err = iscsi_if_transport_ep(transport, ev, nlh->nlmsg_type);
+		err = iscsi_if_transport_ep(transport, ev, nlh->nlmsg_type, rlen);
 		break;
 	case ISCSI_UEVENT_TGT_DSCVR:
-		err = iscsi_tgt_dscvr(transport, ev);
+		err = iscsi_tgt_dscvr(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_SET_HOST_PARAM:
-		err = iscsi_set_host_param(transport, ev);
+		err = iscsi_set_host_param(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_PATH_UPDATE:
-		err = iscsi_set_path(transport, ev);
+		err = iscsi_set_path(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_SET_IFACE_PARAMS:
-		err = iscsi_set_iface_params(transport, ev,
-					     nlmsg_attrlen(nlh, sizeof(*ev)));
+		err = iscsi_set_iface_params(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_PING:
-		err = iscsi_send_ping(transport, ev);
+		err = iscsi_send_ping(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_GET_CHAP:
 		err = iscsi_get_chap(transport, nlh);
@@ -4009,13 +4027,10 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		err = iscsi_delete_chap(transport, ev);
 		break;
 	case ISCSI_UEVENT_SET_FLASHNODE_PARAMS:
-		err = iscsi_set_flashnode_param(transport, ev,
-						nlmsg_attrlen(nlh,
-							      sizeof(*ev)));
+		err = iscsi_set_flashnode_param(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_NEW_FLASHNODE:
-		err = iscsi_new_flashnode(transport, ev,
-					  nlmsg_attrlen(nlh, sizeof(*ev)));
+		err = iscsi_new_flashnode(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_DEL_FLASHNODE:
 		err = iscsi_del_flashnode(transport, ev);
@@ -4030,8 +4045,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		err = iscsi_logout_flashnode_sid(transport, ev);
 		break;
 	case ISCSI_UEVENT_SET_CHAP:
-		err = iscsi_set_chap(transport, ev,
-				     nlmsg_attrlen(nlh, sizeof(*ev)));
+		err = iscsi_set_chap(transport, ev, rlen);
 		break;
 	case ISCSI_UEVENT_GET_HOST_STATS:
 		err = iscsi_get_host_stats(transport, nlh);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230725024529.428311-1-linma%40zju.edu.cn.
